using EntryService as service from '../../srv/arbeitsberichtswesen_srv';
annotate service.Entry with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'AISNumber',
                Value : AISNumber,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DocumentID',
                Value : DocumentID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Company',
                Value : Company,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CompetenceCenter',
                Value : CompetenceCenter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Project',
                Value : Project,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Theme',
                Value : Theme,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Editor',
                Value : Editor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Approver',
                Value : Approver,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StateText',
                Value : StateText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StateCode1',
                Value : StateCode1,
            },
            {
                $Type : 'UI.DataField',
                Label : 'StateCode2',
                Value : StateCode2,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Requestor',
                Value : Requestor,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ConceptDeliveryDate',
                Value : ConceptDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AgreedDeliveryDate',
                Value : AgreedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Comment',
                Value : Comment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AmountInEuroByOffer',
                Value : AmountInEuroByOffer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SomStateCode',
                Value : SomStateCode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SomStateText',
                Value : SomStateText,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TotalAmountInEuro',
                Value : TotalAmountInEuro,
            },
            {
                $Type : 'UI.DataField',
                Label : 'AmountInHoursByOffer',
                Value : AmountInHoursByOffer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ActualAmountInHours',
                Value : ActualAmountInHours,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OfferDate',
                Value : OfferDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FinishDate',
                Value : FinishDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ApprovalDate',
                Value : ApprovalDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Coordinator',
                Value : Coordinator,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RequestType',
                Value : RequestType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Customer',
                Value : Customer,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreationDate',
                Value : CreationDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Team',
                Value : Team,
            },
            {
                $Type : 'UI.DataField',
                Label : 'FunctionalDepartment',
                Value : FunctionalDepartment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProjectID',
                Value : ProjectID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProjectTitle',
                Value : ProjectTitle,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Länder',
                Value : Länder,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Source_Source',
                Value : Source_Source,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'DocumentID',
            Value : DocumentID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'AISNumber',
            Value : AISNumber,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Company',
            Value : Company,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CompetenceCenter',
            Value : CompetenceCenter,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Project',
            Value : Project,
        },
    ],
);

annotate service.Entry with {
    Source @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Source_Type',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : Source_Source,
                ValueListProperty : 'Source',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Description',
            },
        ],
    }
};

// https://developers.sap.com/tutorials/btp-app-create-ui-fiori-elements.html