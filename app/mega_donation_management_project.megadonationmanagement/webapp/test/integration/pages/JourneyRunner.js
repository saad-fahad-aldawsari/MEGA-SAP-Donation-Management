sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"megadonationmanagementproject/megadonationmanagement/test/integration/pages/DonationsList",
	"megadonationmanagementproject/megadonationmanagement/test/integration/pages/DonationsObjectPage"
], function (JourneyRunner, DonationsList, DonationsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('megadonationmanagementproject/megadonationmanagement') + '/test/flpSandbox.html#megadonationmanagementprojectm-tile',
        pages: {
			onTheDonationsList: DonationsList,
			onTheDonationsObjectPage: DonationsObjectPage
        },
        async: true
    });

    return runner;
});

