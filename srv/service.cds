using { MEGA_Donation_Management_Project as my } from '../db/schema.cds';

@path : '/service/mEGA_Donation_Management_Project'
service mEGA_Donation_Management_ProjectSrv
{
    @cds.redirection.target
    @odata.draft.enabled
    entity Donations as
        projection on my.Donations;

    @odata.draft.enabled
    entity Donors as
        projection on my.Donors;

    entity CityVH as select from my.Donations {
        key city
    } group by city;

    entity CampaignVH as select from my.Donations {
        key campaign
    } group by campaign;

    entity CauseVH as select from my.Donations {
        key cause
    } group by cause;
    
}
