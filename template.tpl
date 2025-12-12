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
  "brand": {
    "id": "brand_cookieframe",
    "displayName": "CookieFrame"
  },
  "description": "Integrates CookieFrame consent management with Google Consent Mode v2. Sets default consent states and updates them based on user preferences.",
  "categories": [
    "TAG_MANAGEMENT",
    "UTILITY"
  ],
  "containerContexts": [
    "WEB"
  ],
  "termsOfServiceUrl": "https://cookieframe.com/terms"
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "basicSettings",
    "displayName": "Basic Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "domainId",
        "displayName": "Domain ID",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          },
          {
            "type": "REGEX",
            "args": [
              "^[A-Za-z0-9]{8}$"
            ]
          }
        ],
        "help": "Your 8-character CookieFrame Domain ID. Find this in your CookieFrame dashboard under Domain Settings."
      },
      {
        "type": "CHECKBOX",
        "name": "injectScript",
        "checkboxText": "Inject CookieFrame widget script",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Enable this to load the CookieFrame widget via this tag. Disable if you\u0027re loading the widget script directly in your HTML."
      },
      {
        "type": "TEXT",
        "name": "scriptUrl",
        "displayName": "Script URL (optional)",
        "simpleValueType": true,
        "defaultValue": "",
        "help": "Custom script URL. Leave empty to use the default CookieFrame CDN.",
        "enablingConditions": [
          {
            "paramName": "injectScript",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "consentDefaults",
    "displayName": "Default Consent States",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "LABEL",
        "name": "consentDefaultsLabel",
        "displayName": "Set the default consent state for each type. These apply before the user makes a choice."
      },
      {
        "type": "SELECT",
        "name": "defaultAdStorage",
        "displayName": "ad_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied (recommended)"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "help": "Controls storage for advertising (e.g., cookies for ads)"
      },
      {
        "type": "SELECT",
        "name": "defaultAdUserData",
        "displayName": "ad_user_data",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied (recommended)"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "help": "Controls sending user data to Google for advertising"
      },
      {
        "type": "SELECT",
        "name": "defaultAdPersonalization",
        "displayName": "ad_personalization",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied (recommended)"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "help": "Controls personalized advertising"
      },
      {
        "type": "SELECT",
        "name": "defaultAnalyticsStorage",
        "displayName": "analytics_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied (recommended)"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "help": "Controls storage for analytics (e.g., visit duration)"
      },
      {
        "type": "SELECT",
        "name": "defaultFunctionalityStorage",
        "displayName": "functionality_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted (recommended)"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "help": "Controls storage for website functionality (e.g., language settings)"
      },
      {
        "type": "SELECT",
        "name": "defaultPersonalizationStorage",
        "displayName": "personalization_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "denied",
            "displayValue": "Denied"
          },
          {
            "value": "granted",
            "displayValue": "Granted"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "denied",
        "help": "Controls storage for personalization (e.g., video recommendations)"
      },
      {
        "type": "SELECT",
        "name": "defaultSecurityStorage",
        "displayName": "security_storage",
        "macrosInSelect": false,
        "selectItems": [
          {
            "value": "granted",
            "displayValue": "Granted (recommended)"
          },
          {
            "value": "denied",
            "displayValue": "Denied"
          }
        ],
        "simpleValueType": true,
        "defaultValue": "granted",
        "help": "Controls storage for security (e.g., authentication, fraud prevention)"
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
        "type": "LABEL",
        "name": "regionalLabel",
        "displayName": "Override default consent for specific regions. Use ISO 3166-2 codes (e.g., \u0027US\u0027, \u0027US-CA\u0027, \u0027DE\u0027, \u0027FR\u0027)."
      },
      {
        "type": "SIMPLE_TABLE",
        "name": "regionalDefaultsTable",
        "displayName": "Regional Overrides",
        "simpleTableColumns": [
          {
            "defaultValue": "",
            "displayName": "Region",
            "name": "region",
            "type": "TEXT",
            "valueHint": "e.g., US-CA"
          },
          {
            "defaultValue": "denied",
            "displayName": "ad_storage",
            "name": "adStorage",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          },
          {
            "defaultValue": "denied",
            "displayName": "analytics_storage",
            "name": "analyticsStorage",
            "type": "SELECT",
            "selectItems": [
              {
                "value": "denied",
                "displayValue": "denied"
              },
              {
                "value": "granted",
                "displayValue": "granted"
              }
            ]
          }
        ],
        "newRowButtonText": "Add Region"
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
        "type": "TEXT",
        "name": "waitForUpdate",
        "displayName": "Wait for update (ms)",
        "simpleValueType": true,
        "defaultValue": "500",
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          }
        ],
        "help": "Time in milliseconds to wait for user consent before firing tags with default consent. Recommended: 500ms."
      },
      {
        "type": "CHECKBOX",
        "name": "urlPassthrough",
        "checkboxText": "Enable URL passthrough",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Pass ad click information through URL parameters when consent is denied."
      },
      {
        "type": "CHECKBOX",
        "name": "adsDataRedaction",
        "checkboxText": "Enable ads data redaction",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "Redact ad click identifiers when ad_storage is denied."
      },
      {
        "type": "CHECKBOX",
        "name": "enableDebug",
        "checkboxText": "Enable debug logging",
        "simpleValueType": true,
        "defaultValue": false,
        "help": "Log consent state changes to the browser console."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// CookieFrame GTM Consent Mode Template
// https://cookieframe.com

const setDefaultConsentState = require('setDefaultConsentState');
const updateConsentState = require('updateConsentState');
const gtagSet = require('gtagSet');
const injectScript = require('injectScript');
const callInWindow = require('callInWindow');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const localStorage = require('localStorage');
const JSON = require('JSON');
const getTimestampMillis = require('getTimestampMillis');
const log = require('logToConsole');
const addEventCallback = require('addEventCallback');
const copyFromDataLayer = require('copyFromDataLayer');
const makeNumber = require('makeNumber');
const makeString = require('makeString');
const getType = require('getType');

// Configuration
const domainId = data.domainId;
const injectScriptEnabled = data.injectScript;
const scriptUrl = data.scriptUrl || 'https://www.cookieframe.com/api/widget/' + domainId + '/script.js';
const waitForUpdate = makeNumber(data.waitForUpdate) || 500;
// Enable debug in GTM Preview mode or when explicitly enabled
const isPreviewMode = copyFromWindow('google_tag_manager_preview') || copyFromWindow('__TAG_ASSISTANT_API');
const enableDebug = data.enableDebug || isPreviewMode;

// Storage key used by CookieFrame widget
const STORAGE_KEY = 'cp_consent';

// Developer ID for CookieFrame (registered with Google)
const DEVELOPER_ID = 'dCookieFrame';

/**
 * Debug logger
 */
function debugLog(message, data) {
  if (enableDebug) {
    log('[CookieFrame GTM]', message, data);
  }
}

/**
 * Build default consent state object
 */
function buildDefaultConsent() {
  const consent = {
    'ad_storage': data.defaultAdStorage || 'denied',
    'ad_user_data': data.defaultAdUserData || 'denied',
    'ad_personalization': data.defaultAdPersonalization || 'denied',
    'analytics_storage': data.defaultAnalyticsStorage || 'denied',
    'functionality_storage': data.defaultFunctionalityStorage || 'denied',
    'personalization_storage': data.defaultPersonalizationStorage || 'denied',
    'security_storage': data.defaultSecurityStorage || 'granted',
    'wait_for_update': waitForUpdate
  };

  return consent;
}

/**
 * Build regional consent states
 */
function buildRegionalConsents() {
  const regionals = [];
  const table = data.regionalDefaultsTable;

  if (table && table.length > 0) {
    for (var i = 0; i < table.length; i++) {
      var row = table[i];
      if (row.region) {
        regionals.push({
          'region': [row.region],
          'ad_storage': row.adStorage || 'denied',
          'ad_user_data': row.adStorage || 'denied',
          'ad_personalization': row.adStorage || 'denied',
          'analytics_storage': row.analyticsStorage || 'denied',
          'functionality_storage': 'denied',
          'personalization_storage': 'denied',
          'security_storage': 'granted',
          'wait_for_update': waitForUpdate
        });
      }
    }
  }

  return regionals;
}

/**
 * Convert CookieFrame consent to Google Consent Mode format
 */
function convertToGoogleConsent(cfConsent) {
  if (!cfConsent || getType(cfConsent) !== 'object') {
    return null;
  }

  const analytics = cfConsent.analytics === true;
  const marketing = cfConsent.marketing === true;
  const preferences = cfConsent.preferences === true;

  return {
    'ad_storage': marketing ? 'granted' : 'denied',
    'ad_user_data': marketing ? 'granted' : 'denied',
    'ad_personalization': marketing ? 'granted' : 'denied',
    'analytics_storage': analytics ? 'granted' : 'denied',
    'functionality_storage': preferences ? 'granted' : 'denied',
    'personalization_storage': preferences ? 'granted' : 'denied',
    'security_storage': 'granted'
  };
}

/**
 * Read stored consent from localStorage
 */
function readStoredConsent() {
  const stored = localStorage.getItem(STORAGE_KEY);
  if (stored) {
    const parsed = JSON.parse(stored);
    return convertToGoogleConsent(parsed);
  }
  return null;
}

/**
 * Update consent state
 */
function applyConsentUpdate(googleConsent) {
  if (googleConsent) {
    debugLog('Updating consent state:', googleConsent);

    // Log the actual values being set
    debugLog('  ad_storage:', googleConsent.ad_storage);
    debugLog('  ad_user_data:', googleConsent.ad_user_data);
    debugLog('  ad_personalization:', googleConsent.ad_personalization);
    debugLog('  analytics_storage:', googleConsent.analytics_storage);
    debugLog('  functionality_storage:', googleConsent.functionality_storage);
    debugLog('  personalization_storage:', googleConsent.personalization_storage);

    updateConsentState(googleConsent);

    debugLog('Consent state updated successfully');
  }
}

/**
 * Check for existing consent and apply if found
 */
function checkAndApplyStoredConsent() {
  // Try reading from localStorage
  const storedConsent = readStoredConsent();
  if (storedConsent) {
    debugLog('Found stored consent:', storedConsent);
    applyConsentUpdate(storedConsent);
    return true;
  }

  // Try reading from CookieFrame widget API
  const cfWidget = copyFromWindow('CookieFrame');
  if (cfWidget) {
    const cfConsent = callInWindow('CookieFrame.getConsent');
    if (cfConsent) {
      const googleConsent = convertToGoogleConsent(cfConsent);
      if (googleConsent) {
        debugLog('Found consent from widget:', googleConsent);
        applyConsentUpdate(googleConsent);
        return true;
      }
    }
  }

  return false;
}

/**
 * Set up listener for consent updates from CookieFrame widget
 */
function setupConsentListener() {
  const callLater = require('callLater');

  // Mark that GTM template is handling consent mode
  // This tells the widget not to call setDefaultGoogleConsentMode()
  setInWindow('__cookieframe_gtm', true, true);

  debugLog('Setting up consent listeners');

  // Store reference for consent checking
  var lastConsentHash = '';

  // Use addEventCallback to catch GTM-processed events
  addEventCallback(function(containerId, eventData) {
    var eventName = copyFromDataLayer('event');
    if (eventName === 'cookieframe_consent_update') {
      debugLog('addEventCallback received cookieframe_consent_update');
      var cfConsent = copyFromDataLayer('cookieframeConsent');
      debugLog('cookieframeConsent from dataLayer:', cfConsent);
      if (cfConsent) {
        var googleConsent = convertToGoogleConsent(cfConsent);
        debugLog('Converted to Google consent:', googleConsent);
        if (googleConsent) {
          applyConsentUpdate(googleConsent);
        }
      }
    }
  });

  // Poll for consent changes via localStorage
  // This is the most reliable method as it directly reads the stored consent
  var pollCount = 0;
  var maxPolls = 300; // 30 seconds max with variable intervals
  var widgetFound = false;

  function pollForConsent() {
    pollCount++;

    if (pollCount > maxPolls) {
      debugLog('Consent polling ended after max attempts');
      return;
    }

    // Try to read consent from localStorage (most reliable source)
    var storedConsent = readStoredConsent();
    if (storedConsent) {
      // Create a comprehensive hash to detect any changes
      var consentHash = makeString(storedConsent.ad_storage) + '|' +
                        makeString(storedConsent.analytics_storage) + '|' +
                        makeString(storedConsent.ad_user_data) + '|' +
                        makeString(storedConsent.functionality_storage);

      if (consentHash !== lastConsentHash) {
        debugLog('Consent change detected via localStorage polling');
        debugLog('Previous hash:', lastConsentHash);
        debugLog('New hash:', consentHash);
        applyConsentUpdate(storedConsent);
        lastConsentHash = consentHash;
      }
    }

    // Check if widget is available
    var cfWidget = copyFromWindow('CookieFrame');
    if (cfWidget && !widgetFound) {
      widgetFound = true;
      debugLog('CookieFrame widget detected in window');
    }

    // Continue polling - faster initially, then slower
    // First 2 seconds: 100ms intervals (20 polls)
    // Next 8 seconds: 200ms intervals (40 polls)
    // After that: 500ms intervals
    var nextInterval;
    if (pollCount < 20) {
      nextInterval = 100;
    } else if (pollCount < 60) {
      nextInterval = 200;
    } else {
      nextInterval = 500;
    }

    callLater(pollForConsent, nextInterval);
  }

  // Start polling immediately
  pollForConsent();
}

/**
 * Initialize consent defaults and settings
 */
function initializeConsent() {
  debugLog('Initializing CookieFrame consent mode');

  // Set gtag configurations
  if (data.urlPassthrough) {
    gtagSet('url_passthrough', true);
    debugLog('URL passthrough enabled');
  }

  if (data.adsDataRedaction) {
    gtagSet('ads_data_redaction', true);
    debugLog('Ads data redaction enabled');
  }

  // Set developer ID
  gtagSet('developer_id.' + DEVELOPER_ID, true);

  // Set default consent state
  const defaultConsent = buildDefaultConsent();
  debugLog('Setting default consent:', defaultConsent);
  setDefaultConsentState(defaultConsent);

  // Set regional defaults
  const regionalConsents = buildRegionalConsents();
  for (var i = 0; i < regionalConsents.length; i++) {
    debugLog('Setting regional consent:', regionalConsents[i]);
    setDefaultConsentState(regionalConsents[i]);
  }

  // Check for existing stored consent
  checkAndApplyStoredConsent();

  // Set up listener for future consent updates
  setupConsentListener();
}

/**
 * Inject CookieFrame widget script
 */
function injectCookieFrameScript() {
  debugLog('Injecting CookieFrame script:', scriptUrl);

  injectScript(scriptUrl, function() {
    debugLog('CookieFrame script loaded successfully');
    // Re-check for consent after script loads
    checkAndApplyStoredConsent();
  }, function() {
    debugLog('Failed to load CookieFrame script');
  }, 'cookieframe-widget');
}

// Main execution
initializeConsent();

if (injectScriptEnabled) {
  injectCookieFrameScript();
}

// Signal tag completion
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_consent"
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
        "publicId": "logging"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
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
        "publicId": "inject_script"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://cookieframe.com/*"
              },
              {
                "type": 1,
                "string": "https://*.cookieframe.com/*"
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
        "publicId": "access_globals"
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
                    "string": "CookieFrame"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
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
                    "string": "CookieFrame.getConsent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
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
                    "string": "CookieFrame.hasConsent"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
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
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
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
  },
  {
    "instance": {
      "key": {
        "publicId": "access_local_storage"
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
                    "string": "cp_consent"
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
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "event"
              },
              {
                "type": 1,
                "string": "cookieframeConsent"
              },
              {
                "type": 1,
                "string": "cookieframeConsent.*"
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
        "publicId": "write_data_layer"
      },
      "param": [
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ads_data_redaction"
              },
              {
                "type": 1,
                "string": "url_passthrough"
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
        "publicId": "read_event_metadata",
        "versionId": "1"
      },
      "param": []
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Sets default consent state on initialization
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
      waitForUpdate: 500,
      urlPassthrough: false,
      adsDataRedaction: true,
      enableDebug: false
    };

    runCode(mockData);

    assertApi('setDefaultConsentState').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: Injects script when enabled
  code: |-
    const mockData = {
      domainId: 'ABC12345',
      injectScript: true,
      scriptUrl: '',
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
        if (key === 'cp_consent') {
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

This template integrates CookieFrame with Google Consent Mode v2.

Features:
- Sets default consent states on page load
- Reads existing consent from localStorage
- Updates consent when user makes choices
- Supports regional consent defaults
- URL passthrough and ads data redaction options

Consent Type Mapping:
- necessary → security_storage (always granted)
- analytics → analytics_storage
- marketing → ad_storage, ad_user_data, ad_personalization
- preferences → functionality_storage, personalization_storage

For support: https://cookieframe.com/help
Documentation: https://cookieframe.com/docs/integrations/google-tag-manager


