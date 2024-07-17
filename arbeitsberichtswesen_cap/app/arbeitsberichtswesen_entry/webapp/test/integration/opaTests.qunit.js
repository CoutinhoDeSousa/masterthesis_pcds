sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'arbeitsberichtswesenentry/test/integration/FirstJourney',
		'arbeitsberichtswesenentry/test/integration/pages/EntryList',
		'arbeitsberichtswesenentry/test/integration/pages/EntryObjectPage'
    ],
    function(JourneyRunner, opaJourney, EntryList, EntryObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('arbeitsberichtswesenentry') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheEntryList: EntryList,
					onTheEntryObjectPage: EntryObjectPage
                }
            },
            opaJourney.run
        );
    }
);