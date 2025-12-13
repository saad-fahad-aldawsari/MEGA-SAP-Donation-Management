using mEGA_Donation_Management_ProjectSrv as service from '../../srv/service';
using from '../annotations';

annotate service.Donations with @(
    UI.FieldGroup #Main : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Donor',
                Value : donor_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Value : amount,
            },
            {
                $Type : 'UI.DataField',
                Value : currencyCode,
            },
            {
                $Type : 'UI.DataField',
                Value : donationDate,
            },
            {
                $Type : 'UI.DataField',
                Value : cause,
            },
            {
                $Type : 'UI.DataField',
                Value : campaign,
            },
            {
                $Type : 'UI.DataField',
                Value : donorEmail,
            },
            {
                $Type : 'UI.DataField',
                Value : donorPhone,
            },
        ],
    }
);

annotate service.Donors with {
    name @Common.FieldControl : #ReadOnly
};

annotate service.Donors with {
    email @(
        Common.FieldControl : #ReadOnly,
        )
};

annotate service.Donors with {
    phone @(
        Common.FieldControl : #ReadOnly,
        )
};

annotate service.Donations with {
    donor @Common.ExternalID : donor.name
};

annotate service.Donations with {
    city @Common.ExternalID : city
};

annotate service.Donations with {
    donorName @Common.ExternalID : donor.name
};

annotate service.Donations with {
    donorEmail @Common.ExternalID : donor.email
};

annotate service.Donations with {
    donorPhone @Common.ExternalID : donor.phone
};

