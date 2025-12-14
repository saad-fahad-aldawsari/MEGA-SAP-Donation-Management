using mEGA_Donation_Management_ProjectSrv as service from '../../srv/service';
using from '../annotations';


annotate service.Donations with @(UI.FieldGroup #Main: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Label: 'Donor',
            Value: donor_ID,
        },
        {
            $Type: 'UI.DataField',
            Value: donorEmail,
        },
        {
            $Type: 'UI.DataField',
            Value: donorPhone,
        },
        {
            $Type: 'UI.DataField',
            Value: city,
        },
        {
            $Type: 'UI.DataField',
            Value: amount,
        },
        {
            $Type: 'UI.DataField',
            Value: currencyCode,
        },
        {
            $Type: 'UI.DataField',
            Value: donationDate,
        },
        {
            $Type: 'UI.DataField',
            Value: cause,
        },
        {
            $Type: 'UI.DataField',
            Value: campaign,
        }
    ],
});

annotate service.Donations with {
    donor @Common.ExternalID: donor.name
};

annotate service.Donations with {
    donorName @Common.ExternalID: donor.name
};

annotate service.Donations with {
    donorEmail @Common.ExternalID: donor.email
};

annotate service.Donations with {
    donorPhone @Common.ExternalID: donor.phone
};


annotate service.Donations with @(UI.SelectionFields: [
    donor_ID, // “Donor” (will display name via text)
    city, // dropdown/value help
    campaign, // dropdown/value help
    cause, // dropdown/value help
    donationDate, // date filter (no dropdown)
    amount // amount filter (no dropdown)
]);

// Donor (by ID, but displayed as name)
annotate service.Donations with {
    donor_ID @(
        Common.Text           : donor.name,
        Common.TextArrangement: #TextOnly,
        Common.ValueList      : {
            CollectionPath: 'Donors',
            Parameters    : [
                {
                    $Type            : 'Common.ValueListParameterInOut',
                    LocalDataProperty: donor_ID,
                    ValueListProperty: 'ID'
                },

                {
                    $Type            : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty: 'name'
                },
            ]
        }
    );
};

annotate service.Donations with {
    city @(
        Common.ValueListWithFixedValues: true,
        Common.ValueList               : {
            CollectionPath: 'CityVH',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: city,
                ValueListProperty: 'city'
            }]
        }
    );
};

annotate service.Donations with {
    campaign @(
        Common.ValueListWithFixedValues: true,
        Common.ValueList               : {
            CollectionPath: 'CampaignVH',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: campaign,
                ValueListProperty: 'campaign'
            }]
        }
    );
};

annotate service.Donations with {
    cause @(
        Common.ValueListWithFixedValues: true,
        Common.ValueList               : {
            CollectionPath: 'CauseVH',
            Parameters    : [{
                $Type            : 'Common.ValueListParameterInOut',
                LocalDataProperty: cause,
                ValueListProperty: 'cause'
            }]
        }
    );
};

annotate service.Donations with @(Capabilities.FilterRestrictions: {FilterExpressionRestrictions: [
    {
        Property          : 'donationDate',
        AllowedExpressions: 'SingleRange'
    },
    {
        Property          : 'amount',
        AllowedExpressions: 'SearchExpression'
    },
]});

annotate service.Donations with {
    cause  @Common.Label: 'Campaign Cause';
    city   @Common.Label: 'Donation City';
    amount @Common.Label: 'Donation Amount';
};

