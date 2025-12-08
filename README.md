# CookieFrame - Google Tag Manager Template

Official Google Tag Manager template for [CookieFrame](https://cookieframe.com) Consent Management Platform with Google Consent Mode v2 support.

## Features

- **Google Consent Mode v2** - Full support for all 7 consent signal types
- **Automatic Consent Detection** - Reads existing consent from localStorage
- **Regional Defaults** - Configure different defaults by region (ISO 3166-2)
- **URL Passthrough** - Preserve ad click information when consent is denied
- **Ads Data Redaction** - Automatically redact ad data when consent is denied
- **Widget Injection** - Optionally load the CookieFrame widget via GTM
- **Debug Mode** - Console logging for troubleshooting

## Consent Type Mapping

| CookieFrame Category | Google Consent Types |
|---------------------|---------------------|
| `necessary` | `security_storage` (always granted) |
| `analytics` | `analytics_storage` |
| `marketing` | `ad_storage`, `ad_user_data`, `ad_personalization` |
| `preferences` | `functionality_storage`, `personalization_storage` |

## Installation

### Option 1: Community Template Gallery (Recommended)

1. In Google Tag Manager, go to **Tags** → **New**
2. Click **Tag Configuration** → **Discover more tag types in the Community Template Gallery**
3. Search for **"CookieFrame"**
4. Select **CookieFrame Consent Management Platform**
5. Click **Add to workspace**
6. Configure the tag (see Configuration section below)
7. Set trigger to **Consent Initialization - All Pages**
8. Save and publish

### Option 2: Manual Import

1. Download `template.tpl` from this repository
2. In GTM, go to **Templates** → **Tag Templates** → **New**
3. Click the **⋮** menu → **Import**
4. Select the downloaded `template.tpl` file
5. Save the template
6. Create a new tag using the imported template

## Configuration

### Basic Settings

| Field | Description | Required |
|-------|-------------|----------|
| **Domain ID** | Your 8-character CookieFrame domain identifier. Find this in your [CookieFrame dashboard](https://cookieframe.com/app) under Domain Settings. | Yes |
| **Inject CookieFrame widget script** | Enable to load the widget via this GTM tag. Disable if you're loading the widget directly in your HTML. | No |
| **Script URL** | Custom script URL (leave empty for default CDN). | No |

### Default Consent States

Configure the initial consent state before the user makes a choice:

| Consent Type | Recommended Default | Description |
|--------------|--------------------| ------------|
| `ad_storage` | Denied | Storage for advertising cookies |
| `ad_user_data` | Denied | Sending user data to Google for ads |
| `ad_personalization` | Denied | Personalized advertising |
| `analytics_storage` | Denied | Analytics cookies (e.g., visit duration) |
| `functionality_storage` | Denied | Website functionality (e.g., language) |
| `personalization_storage` | Denied | Personalization (e.g., recommendations) |
| `security_storage` | Granted | Security features (e.g., authentication) |

### Regional Consent Defaults

Override defaults for specific regions using ISO 3166-2 codes:

| Region Code | Example |
|------------|---------|
| `US` | United States (all states) |
| `US-CA` | California (CCPA) |
| `DE` | Germany |
| `FR` | France |
| `GB` | United Kingdom |

**Note:** More specific regions take precedence. For example, `US-CA` settings override `US` settings for California visitors.

### Advanced Settings

| Setting | Default | Description |
|---------|---------|-------------|
| **Wait for update** | 500ms | Time to wait for user consent before firing tags |
| **URL passthrough** | Off | Pass ad click info in URL when consent denied |
| **Ads data redaction** | On | Redact ad identifiers when ad_storage denied |
| **Debug logging** | Off | Log consent changes to browser console |

## Trigger Setup

**Important:** This tag must fire on the **Consent Initialization - All Pages** trigger, which fires before any other tags.

1. In your tag configuration, click **Triggering**
2. Select **Consent Initialization - All Pages**
3. Save the tag

## How It Works

1. **Page Load**: Tag fires on Consent Initialization trigger
2. **Set Defaults**: Default consent states are applied immediately
3. **Check Storage**: Tag reads any existing consent from `localStorage`
4. **Update Consent**: If consent exists, it updates the consent state
5. **Listen for Changes**: Tag monitors for consent updates from the widget
6. **User Interaction**: When user makes a choice, consent is updated in real-time

## Integration with CookieFrame Widget

### Automatic Integration

If you enable "Inject CookieFrame widget script", the template will:
1. Load the CookieFrame widget from the CDN
2. Automatically detect consent changes
3. Update Google Consent Mode accordingly

### Manual Widget Installation

If you prefer to install the widget directly in your HTML:

```html
<script
  src="https://cookieframe.com/api/widget/YOUR_DOMAIN_ID/script.js"
  data-domain-id="YOUR_DOMAIN_ID"
  async>
</script>
```

The GTM template will still detect consent changes from the widget.

## Verifying the Integration

### Using GTM Preview Mode

1. In GTM, click **Preview**
2. Enter your website URL
3. Look for the CookieFrame tag in the "Tags Fired" section
4. Check the "Consent" tab to see consent states

### Using Browser Console

Enable debug mode in the tag configuration, then check the browser console for messages like:

```
[CookieFrame GTM] Initializing CookieFrame consent mode
[CookieFrame GTM] Setting default consent: {ad_storage: "denied", ...}
[CookieFrame GTM] Found stored consent: {ad_storage: "granted", ...}
```

### Using Google Tag Assistant

1. Install [Google Tag Assistant](https://tagassistant.google.com/)
2. Navigate to your website
3. Check the Consent tab for consent signal status

## Troubleshooting

### Tags not firing based on consent

1. Ensure the CookieFrame tag fires on **Consent Initialization - All Pages**
2. Check that other tags have proper consent settings configured
3. Verify the Domain ID is correct

### Consent not updating after user choice

1. Enable debug mode and check console for errors
2. Verify the CookieFrame widget is loading correctly
3. Check that `localStorage` is accessible (not blocked by browser settings)

### Widget not appearing

1. Check the Domain ID matches your CookieFrame dashboard
2. Verify the domain is active in CookieFrame
3. Check browser console for script loading errors

## Support

- **Documentation**: [cookieframe.com/docs](https://cookieframe.com/docs)
- **Help Center**: [cookieframe.com/help](https://cookieframe.com/help)
- **Issues**: [GitHub Issues](https://github.com/cookieframeapp/cookieframe-gtm-template/issues)

## License

Apache 2.0 - See [LICENSE](LICENSE) file

## Changelog

### 1.0.0 (Initial Release)

- Google Consent Mode v2 support with all 7 consent types
- Automatic consent detection from localStorage
- Regional consent defaults with ISO 3166-2 support
- URL passthrough and ads data redaction options
- Optional widget script injection
- Debug logging mode
