using { MEGA_Donation_Management_Project as my } from '../db/schema.cds';

@path : '/service/mEGA_Donation_Management_Project'
service mEGA_Donation_Management_ProjectSrv
{
    @odata.draft.enabled
    entity Donors as
        projection on my.Donors;

    @odata.draft.enabled
    entity Donations as
        projection on my.Donations;
}

annotate mEGA_Donation_Management_ProjectSrv with @requires :
[
    'authenticated-user'
];
