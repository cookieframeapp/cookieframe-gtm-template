___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "CookieFrame Consent Management Platform",
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ],
  "brand": {
    "id": "github.com_cookieframeapp",
    "displayName": "CookieFrame",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAACXBIWXMAAAsTAAALEwEAmpwYAAABpElEQVR4nO2WPUsDQRCGH0VFUbEQC7WwsLGwsLCwsLCwsLCwsLCwsLCwsLCwsLGwsLCwsLCwsLDwB/gDFBQVFRUVFRUVFRUVFfUfZOECbuDOu0tyl4TkLsnlLtztzn7MzO4eKIqiKIqSVTqB28AO4CTwAngEHABnwDXgAugDeoFR4FvYtwN4B6yFfV+AEaAnAvQV9jrFfecvQBcwCFwC48AYcAk0A13AHLCiKFQfGBaGgCNgWZ5fARPAkNy/Btxk7F8EJoBBYBZYBraAcWAMWAKWgPXfFYDAauAG2E5wfyewJe+vyf1j4Ex+24B5YBWYANaBNeBCPjcB08CqMPYLWALmZf81sP8bgA1gQ+4nAA5wCUwB08COfF8HxuT+AjAFrAOjwIbcX5LPSeAGMAjMy/sbwF1gCpgBpoEl+b4BTAJL8v0COCzfLwNjsm8d2E7x2wu0/PBb+nUL/gT/K+AngF1gL4HnHeAS2ANsgFd5/ljuHwIXwF5CnfXAHbAL7AG7wB5wBuwBZ8Au8BXYBa6Bs7TrKAL9AAI6Cq3cTY8xAAAAAElFTkSuQmCC"
  },
  "description": "CookieFrame Consent Management Platform - Google Consent Mode v2 integration. Use with Consent Initialization - All Pages trigger.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "domainId",
    "displayName": "Domain ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Your 8-character CookieFrame Domain ID from the dashboard"
  },
  {
    "type": "CHECKBOX",
    "name": "injectScript",
    "checkboxText": "Inject CookieFrame widget script",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "Automatically inject the CookieFrame consent widget on the page. Disable if you're adding the script manually."
  },
  {
    "type": "TEXT",
    "name": "scriptUrl",
    "displayName": "Custom Script URL (optional)",
    "simpleValueType": true,
    "help": "Override the default widget script URL. Leave empty to use the default."
  },
  {
    "type": "GROUP",
    "name": "consentDefaults",
    "displayName": "Default Consent Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SELECT",
        "name": "defaultAdStorage",
        "displayName": "ad_storage",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "Denied" },
          { "value": "granted", "displayValue": "Granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "defaultAdUserData",
        "displayName": "ad_user_data",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "Denied" },
          { "value": "granted", "displayValue": "Granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "defaultAdPersonalization",
        "displayName": "ad_personalization",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "Denied" },
          { "value": "granted", "displayValue": "Granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "defaultAnalyticsStorage",
        "displayName": "analytics_storage",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "Denied" },
          { "value": "granted", "displayValue": "Granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "defaultFunctionalityStorage",
        "displayName": "functionality_storage",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "Denied" },
          { "value": "granted", "displayValue": "Granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "defaultPersonalizationStorage",
        "displayName": "personalization_storage",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "denied", "displayValue": "Denied" },
          { "value": "granted", "displayValue": "Granted" }
        ],
        "simpleValueType": true,
        "defaultValue": "denied"
      },
      {
        "type": "SELECT",
        "name": "defaultSecurityStorage",
        "displayName": "security_storage",
        "macrosInSelect": false,
        "selectItems": [
          { "value": "granted", "displayValue": "Granted" },
          { "value": "denied", "displayValue": "Denied" }
        ],
        "simpleValueType": true,
        "defaultValue": "granted"
      },
      {
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "Wait for update (ms)",
        "simpleValueType": true,
        "defaultValue": 500,
        "help": "Milliseconds to wait for consent update before firing tags"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "regionalDefaults",
    "displayName": "Regional Consent Defaults",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "SIMPLE_TABLE",
        "name": "regionalDefaultsTable",
        "displayName": "Regional Defaults",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Region (ISO 3166-2)",
            "name": "region",
            "type": "TEXT"
          },
          {
            "defaultValue": "denied",
            "displayName": "ad_storage",
            "name": "adStorage",
            "type": "SELECT",
            "selectItems": [
              { "value": "denied", "displayValue": "Denied" },
              { "value": "granted", "displayValue": "Granted" }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "analytics_storage",
            "name": "analyticsStorage",
            "type": "SELECT",
            "selectItems": [
              { "value": "denied", "displayValue": "Denied" },
              { "value": "granted", "displayValue": "Granted" }
            ]
          }
        ],
        "help": "Set consent defaults for specific regions using ISO 3166-2 codes (e.g., US-CA for California)"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "advancedSettings",
    "displayName": "Advanced Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "Enable URL passthrough",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Pass ad click information through URL parameters when consent is denied"
      },
      {
        "type": "CHECKBOX",
        "name": "adsDataRedaction",
        "checkboxText": "Enable ads data redaction",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Redact ad click identifiers when ad_storage consent is denied"
      },
      {
        "type": "CHECKBOX",
        "name": "enableDebug",
        "checkboxText": "Enable debug logging",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Log debug messages to the browser console"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// CookieFrame GTM Consent Mode Template
// https://cookieframe.com
//
// Uses single-trigger pattern with "Consent Initialization - All Pages":
// - Sets consent defaults on page load
// - Reads stored consent for returning visitors
// - Injects widget script
// - Handles same-page consent updates via callback

const log = require('logToConsole');
const injectScript = require('injectScript');
const queryPermission = require('queryPermission');
const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const gtagSet = require('gtagSet');
const setInWindow = require('setInWindow');
const localStorage = require('localStorage');
const JSON = require('JSON');
const makeNumber = require('makeNumber');
const getType = require('getType');

// Configuration
const domainId = data.domainId;
const consentModeEnabled = true;
const waitForUpdate = makeNumber(data.waitForUpdate) || 500;

// Debug logger
const debug = function(msg, obj) {
  if (data.enableDebug) {
    if (obj !== undefined) {
      log('[CookieFrame GTM]', msg, obj);
    } else {
      log('[CookieFrame GTM]', msg);
    }
  }
};

debug('Initializing CookieFrame consent mode');

// Set GTM flag to indicate GTM is handling consent
// This tells the widget to skip setDefaultGoogleConsentMode()
setInWindow('__cookieframe_gtm', true, true);

// Pass configuration to widget
const gtmSettings = {
  'enabled': true,
  'consentMode': consentModeEnabled
};
setInWindow('cookieframe_gtm', gtmSettings, true);

if (consentModeEnabled) {
  // Set gtag configurations
  gtagSet({
    'url_passthrough': data.urlPassthrough === true,
    'ads_data_redaction': data.adsDataRedaction !== false,
    'developer_id.dCookieFrame': true
  });

  // Set default consent state (all denied except security_storage)
  setDefaultConsentState({
    'ad_storage': data.defaultAdStorage || 'denied',
    'ad_user_data': data.defaultAdUserData || 'denied',
    'ad_personalization': data.defaultAdPersonalization || 'denied',
    'analytics_storage': data.defaultAnalyticsStorage || 'denied',
    'functionality_storage': data.defaultFunctionalityStorage || 'denied',
    'personalization_storage': data.defaultPersonalizationStorage || 'denied',
    'security_storage': data.defaultSecurityStorage || 'granted',
    'wait_for_update': waitForUpdate
  });
  debug('Default consent state set');

  // Set regional defaults if provided
  const regionDefaults = data.regionalDefaultsTable;
  if (regionDefaults && regionDefaults.length > 0) {
    for (var i = 0; i < regionDefaults.length; i++) {
      var region = regionDefaults[i];
      if (region.region) {
        setDefaultConsentState({
          'ad_storage': region.adStorage || 'denied',
          'ad_user_data': region.adStorage || 'denied',
          'ad_personalization': region.adStorage || 'denied',
          'analytics_storage': region.analyticsStorage || 'denied',
          'functionality_storage': 'denied',
          'personalization_storage': 'denied',
          'security_storage': 'granted',
          'region': [region.region]
        });
        debug('Regional default set for', region.region);
      }
    }
  }

  // Check if consent already exists in localStorage (returning visitor)
  // Must check permission before accessing localStorage in GTM sandboxed JS
  if (queryPermission('access_local_storage', 'read', 'cf_consent')) {
    const storedConsent = localStorage.getItem('cf_consent');

    if (storedConsent) {
      var consent = JSON.parse(storedConsent);
      debug('Found stored consent', consent);

      if (consent && getType(consent) === 'object') {
        var analytics = consent.analytics === true;
        var marketing = consent.marketing === true;
        var preferences = consent.preferences === true;

        updateConsentState({
          'ad_storage': marketing ? 'granted' : 'denied',
          'ad_user_data': marketing ? 'granted' : 'denied',
          'ad_personalization': marketing ? 'granted' : 'denied',
          'analytics_storage': analytics ? 'granted' : 'denied',
          'functionality_storage': preferences ? 'granted' : 'denied',
          'personalization_storage': preferences ? 'granted' : 'denied',
          'security_storage': 'granted'
        });
        debug('Consent state updated from stored preferences');
      } else {
        debug('Invalid consent object in localStorage');
      }
    } else {
      debug('No stored consent found, waiting for user interaction');
    }
  } else {
    debug('Missing localStorage read permission');
  }
}

// Set up consent change listener via widget callback
// The widget will call this function directly when consent changes
// This handles same-page consent updates without requiring dataLayer read permission
setInWindow('__cookieframe_onConsentChange', function(consentData) {
  debug('Received consent change callback from widget', consentData);
  if (consentData && getType(consentData) === 'object') {
    updateConsentState({
      'ad_storage': consentData.marketing ? 'granted' : 'denied',
      'ad_user_data': consentData.marketing ? 'granted' : 'denied',
      'ad_personalization': consentData.marketing ? 'granted' : 'denied',
      'analytics_storage': consentData.analytics ? 'granted' : 'denied',
      'functionality_storage': consentData.preferences ? 'granted' : 'denied',
      'personalization_storage': consentData.preferences ? 'granted' : 'denied',
      'security_storage': 'granted'
    });
    debug('Consent state updated from widget');
  }
}, true);
debug('Widget callback registered');

// Inject widget script if enabled
if (data.injectScript) {
  var scriptUrl = data.scriptUrl || 'https://www.cookieframe.com/api/widget/' + domainId + '/script.js';
  debug('Injecting widget script', scriptUrl);

  if (queryPermission('inject_script', scriptUrl)) {
    injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, 'cookieframe-widget');
  } else {
    debug('No permission to inject script');
    data.gtmOnFailure();
  }
} else {
  data.gtmOnSuccess();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__cookieframe_gtm"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cookieframe_gtm"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__cookieframe_onConsentChange"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_consent",
        "versionId": "1"
      },
      "param": [
        {
          "key": "consentTypes",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "analytics_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_user_data"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ad_personalization"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "functionality_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "personalization_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "consentType"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "security_storage"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://www.cookieframe.com/*"
              },
              {
                "type": 1,
                "string": "https://cookieframe.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "write_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "url_passthrough"
              },
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "developer_id.dCookieFrame"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cf_consent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Sets default consent state
  code: |-
    const mockData = {
      domainId: 'ABC12345',
      injectScript: false,
      defaultAdStorage: 'denied',
      defaultAdUserData: 'denied',
      defaultAdPersonalization: 'denied',
      defaultAnalyticsStorage: 'denied',
      defaultFunctionalityStorage: 'denied',
      defaultPersonalizationStorage: 'denied',
      defaultSecurityStorage: 'granted',
      waitForUpdate: 500
    };

    runCode(mockData);

    assertApi('setDefaultConsentState').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Injects widget script when enabled
  code: |-
    const mockData = {
      domainId: 'ABC12345',
      injectScript: true,
      defaultAdStorage: 'denied',
      defaultAdUserData: 'denied',
      defaultAdPersonalization: 'denied',
      defaultAnalyticsStorage: 'denied',
      defaultFunctionalityStorage: 'denied',
      defaultPersonalizationStorage: 'denied',
      defaultSecurityStorage: 'granted',
      waitForUpdate: 500
    };

    runCode(mockData);

    assertApi('injectScript').wasCalled();
- name: Reads stored consent from localStorage
  code: |-
    mock('localStorage', {
      getItem: function(key) {
        if (key === 'cf_consent') {
          return '{"necessary":true,"analytics":true,"marketing":false,"preferences":true}';
        }
        return null;
      }
    });

    const mockData = {
      domainId: 'ABC12345',
      injectScript: false,
      defaultAdStorage: 'denied',
      defaultAdUserData: 'denied',
      defaultAdPersonalization: 'denied',
      defaultAnalyticsStorage: 'denied',
      defaultFunctionalityStorage: 'denied',
      defaultPersonalizationStorage: 'denied',
      defaultSecurityStorage: 'granted',
      waitForUpdate: 500
    };

    runCode(mockData);

    assertApi('updateConsentState').wasCalled();
setup: ''


___NOTES___

CookieFrame Consent Management Platform GTM Template
https://cookieframe.com

SETUP: Configure this tag with ONE trigger:
- "Consent Initialization - All Pages"

How it works:
1. On page load (Consent Initialization):
   - Sets __cookieframe_gtm flag (widget skips its own default consent)
   - Calls setDefaultConsentState() with configured defaults
   - Reads localStorage and calls updateConsentState() if consent exists (returning visitors)
   - Injects widget script

2. When user interacts with consent banner:
   - Widget saves consent to localStorage
   - Widget calls the registered callback to update consent state
   - Tags waiting for consent now fire

Consent Type Mapping:
- necessary → security_storage (always granted)
- analytics → analytics_storage
- marketing → ad_storage, ad_user_data, ad_personalization
- preferences → functionality_storage, personalization_storage

