from flask import Flask, render_template, request, jsonify, send_file, Response
import requests
from io import BytesIO , StringIO
import csv
from datetime import datetime
app = Flask(__name__)


def get_data():
    headers = {'Accept': 'application/json'}  # Stellt sicher, dass die Antwort im JSON-Format erwartet wird.
    url = 'http://localhost:4004/odata/v4/entry/MockEntry'

    response = requests.get(url, headers=headers)
    #response = requests.get('https://my-cap-service.cfapps.eu10.hana.ondemand.com/EntryService')
    if response.status_code == 200:
        data = response.json()  # Konvertiert die Antwort in JSON
        return data  # Gibt die Daten zurück
    else:
        return []





######## PAGES ########
@app.route('/')
def home():
    global loaded_data
    # Hole Daten vom Service
    
    data = get_data()
    if data:
        return render_template('index.html', entries=data['value'])
    else: 
        return jsonify({
            'error': 'Failed to fetch data',
            'message': str(response.text)
        })
    

@app.route('/download-csv')
def download():
    
    data = get_data()
    entries = data.get('value', [])  # Adjust the key depending on the structure of your JSON

    # Create a StringIO object to hold the CSV data
    proxy = StringIO()
    if entries:
        # Create a CSV writer object and write the data
        field_names = entries[0].keys()  # Assumes all entries contain the same structure
        csv_writer = csv.DictWriter(proxy, fieldnames=field_names)

        # Write the header and rows
        csv_writer.writeheader()
        csv_writer.writerows(entries)

        # Set the pointer of the StringIO object to the beginning
        proxy.seek(0)

        ## filename mit Datum und Uhrzeit
        filename = 'data_{}.csv'.format(datetime.now().strftime('%Y-%m-%d_%H-%M-%S'))  
        
        return Response(
            proxy.getvalue(),
            mimetype='text/csv',
            headers={'Content-Disposition': f'attachment; filename={filename}'}
        )
    else:
        return 'No data available to download', 404



if __name__ == '__main__':
    app.run(debug=True)
