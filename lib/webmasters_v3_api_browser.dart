library webmasters_v3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_webmasters_v3_api/src/browser_client.dart';
import "package:google_webmasters_v3_api/webmasters_v3_api_client.dart";

/** Lets you view Google Webmaster Tools data for your verified sites. */
@deprecated
class Webmasters extends Client with BrowserClient {

  /** OAuth Scope2: View and modify Webmaster Tools data for your verified sites */
  static const String WEBMASTERS_SCOPE = "https://www.googleapis.com/auth/webmasters";

  /** OAuth Scope2: View Webmaster Tools data for your verified sites */
  static const String WEBMASTERS_READONLY_SCOPE = "https://www.googleapis.com/auth/webmasters.readonly";

  final oauth.OAuth2 auth;

  Webmasters([oauth.OAuth2 this.auth]);
}
