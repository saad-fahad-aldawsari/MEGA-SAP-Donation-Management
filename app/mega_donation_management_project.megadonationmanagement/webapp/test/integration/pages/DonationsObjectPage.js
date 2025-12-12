sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'megadonationmanagementproject.megadonationmanagement',
            componentId: 'DonationsObjectPage',
            contextPath: '/Donations'
        },
        CustomPageDefinitions
    );
});