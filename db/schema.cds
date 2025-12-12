namespace MEGA_Donation_Management_Project;
using { cuid } from '@sap/cds/common';

@assert.unique: { name: [name] }
entity Donors : cuid {
  name: String(100) @mandatory;
  email: String(100);
  phone: String(15);
  status: String(20);
  donorType: String(50);
  isRecurringDonor: Boolean;
  isHNI: Boolean;
  donations: Association to many Donations on donations.donor = $self;
}

entity Donations : cuid {
  donorName: String(100);
  donorEmail: String(100);
  donorPhone: String(15);
  city: String(50);
  amount: Integer;
  currencyCode: String(10);
  donationDate: Date;
  cause: String(100);
  campaign: String(100);
  donor: Association to Donors;
}