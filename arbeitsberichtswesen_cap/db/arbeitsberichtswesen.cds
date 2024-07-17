// namespace app.arbeitsberichtswesen;
context app.arbeitsberichtswesen {
    entity Entry {
            AISNumber            : String;
        key DocumentID           : String;
            Company              : String;
            CompetenceCenter     : String;
            Project              : String;
            Theme                : String;
            Editor               : String;
            Approver             : String;
            StateText            : String;
            StateCode1           : Integer;
            StateCode2           : Integer;
            Requestor            : String;
            ConceptDeliveryDate  : Date;
            AgreedDeliveryDate   : Date;
            Comment              : LargeString;
            AmountInEuroByOffer  : Decimal(15, 2);
            SomStateCode         : Integer;
            SomStateText         : String;
            TotalAmountInEuro    : Decimal(15, 2);
            AmountInHoursByOffer : Decimal(15, 2);
            ActualAmountInHours  : Decimal(15, 2);
            OfferDate            : Date;
            FinishDate           : Date;
            ApprovalDate         : Date;
            Coordinator          : String;
            RequestType          : String;
            Customer             : String;
            CreationDate         : Date;
            Team                 : String;
            FunctionalDepartment : String;
            ProjectID            : String;
            ProjectTitle         : String;
            Länder               : String;
        key Source               : Association to Source_Type;
    }

    entity Source_Type {
        key Source      : Integer;
            Description : String;
    }

    // Für die Zukunft wäre es sauberer wenn man States in eine Extra Tabelle speichert -
    // der Datenservice ist so noch nicht gegeben und wird sich Zwangsweise ändern sobald die Lotus abgeschafft werden
    entity State_Code {
        key StateCode : Integer; // Primary Key
            StateText : String;
    }
}
// Extra Artifakte:
// kann man per Hand machen - aber vertipper werden nicht angemerkt 
// bessere Option : Datenbankordner : hana-cli inspectView -v V_Example -o cds
@cds.persistence.exists 
@cds.persistence.calcview 
Entity V_EXAMPLE {
key     DOCUMENTID: String(5000)  @title: 'DOCUMENTID: DOCUMENTID' ; 
        AISNUMBER: String(5000)  @title: 'AISNUMBER: AISNUMBER' ; 
        QUELLE: String(5000)  @title: 'QUELLE: DESCRIPTION' ; 
}

@cds.persistence.exists 
@cds.persistence.calcview 
Entity V_ARBEITSBERICHTSWESEN {
key     DOCUMENTID: String(5000)  @title: 'DOCUMENTID: DOCUMENTID' ; 
        AISNUMBER: String(5000)  @title: 'AISNUMBER: AISNUMBER' ; 
        COMMENT_SOM: LargeString  @title: 'COMMENT_SOM: COMMENT' ; 
        COMMENT_AIS: LargeString  @title: 'COMMENT_AIS: COMMENT_AIS' ; 
        COMPANY: String(13)  @title: 'COMPANY: COMPANY' ; 
        COMPETENCECENTER: String(13)  @title: 'COMPETENCECENTER: COMPETENCECENTER' ; 
        PROJECT: String(13)  @title: 'PROJECT: PROJECT' ; 
        THEME: String(13)  @title: 'THEME: THEME' ; 
        EDITOR: String(13)  @title: 'EDITOR: EDITOR' ; 
        APPROVER: String(13)  @title: 'APPROVER: APPROVER' ; 
        STATETEXT: String(13)  @title: 'STATETEXT: STATETEXT' ; 
        STATECODE: Integer  @title: 'STATECODE: STATECODE' ; 
        REQUESTOR: String(13)  @title: 'REQUESTOR: REQUESTOR' ; 
        CONCEPTDELIVERYDATE: Date  @title: 'CONCEPTDELIVERYDATE: CONCEPTDELIVERYDATE' ; 
        AGREEDDELIVERYDATE: Date  @title: 'AGREEDDELIVERYDATE: AGREEDDELIVERYDATE' ; 
        AMOUNTINEUROBYOFFER: Decimal(15)  @title: 'AMOUNTINEUROBYOFFER: AMOUNTINEUROBYOFFER' ; 
        AMOUNTINHOURSBYOFFER: Decimal(15)  @title: 'AMOUNTINHOURSBYOFFER: AMOUNTINHOURSBYOFFER' ; 
        ACTUALAMOUNTINHOURS: Decimal(15)  @title: 'ACTUALAMOUNTINHOURS: ACTUALAMOUNTINHOURS' ; 
        OFFERDATE: Date  @title: 'OFFERDATE: OFFERDATE' ; 
        FINISHDATE: Date  @title: 'FINISHDATE: FINISHDATE' ; 
        APPROVALDATE: Date  @title: 'APPROVALDATE: APPROVALDATE' ; 
        COORDINATOR: String(13)  @title: 'COORDINATOR: COORDINATOR' ; 
        REQUESTTYPE: String(13)  @title: 'REQUESTTYPE: REQUESTTYPE' ; 
        CREATIONDATE: Date  @title: 'CREATIONDATE: CREATIONDATE' ; 
        TEAM: String(13)  @title: 'TEAM: TEAM' ; 
        FUNCTIONALDEPARTMENT: String(13)  @title: 'FUNCTIONALDEPARTMENT: FUNCTIONALDEPARTMENT' ; 
        PROJECTID: String(13)  @title: 'PROJECTID: PROJECTID' ; 
        PROJECTTITLE: String(13)  @title: 'PROJECTTITLE: PROJECTTITLE' ; 
        COUNTRY: String(13)  @title: 'COUNTRY: COUNTRY' ; 
        SOURCE: String(5000)  @title: 'SOURCE: DESCRIPTION' ; 
}

@cds.persistence.exists 
@cds.persistence.calcview 
Entity V_KORREKTURBEDARF {
key     DOCUMENTID: String(5000)  @title: 'DOCUMENTID: DOCUMENTID' ; 
        AISNUMBER: String(5000)  @title: 'AISNUMBER: AISNUMBER' ; 
        STATETEXT: String(13)  @title: 'STATETEXT: STATETEXT' ; 
        STATECODE: Integer  @title: 'STATECODE: STATECODE' ; 
        ISSUE: String(13)  @title: 'ISSUE: ISSUE' ; 
}