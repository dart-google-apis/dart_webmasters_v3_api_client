part of webmasters_v3_api;

/** List of sitemaps. */
class SitemapsListResponse {

  /** Information about a sitemap entry. */
  core.List<WmxSitemap> sitemap;

  /** Create new SitemapsListResponse from JSON data */
  SitemapsListResponse.fromJson(core.Map json) {
    if (json.containsKey("sitemap")) {
      sitemap = json["sitemap"].map((sitemapItem) => new WmxSitemap.fromJson(sitemapItem)).toList();
    }
  }

  /** Create JSON Object for SitemapsListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (sitemap != null) {
      output["sitemap"] = sitemap.map((sitemapItem) => sitemapItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SitemapsListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** List of sites with access level information. */
class SitesListResponse {

  /** Access level information for a Webmaster Tools site. */
  core.List<WmxSite> siteEntry;

  /** Create new SitesListResponse from JSON data */
  SitesListResponse.fromJson(core.Map json) {
    if (json.containsKey("siteEntry")) {
      siteEntry = json["siteEntry"].map((siteEntryItem) => new WmxSite.fromJson(siteEntryItem)).toList();
    }
  }

  /** Create JSON Object for SitesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (siteEntry != null) {
      output["siteEntry"] = siteEntry.map((siteEntryItem) => siteEntryItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of SitesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** An entry in a URL crawl errors time series. */
class UrlCrawlErrorCount {

  /** The error count at the given timestamp. */
  core.int count;

  /** The time (well, date) when errors were detected, in RFC 3339 format. */
  core.String timestamp;

  /** Create new UrlCrawlErrorCount from JSON data */
  UrlCrawlErrorCount.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = (json["count"] is core.String) ? core.int.parse(json["count"]) : json["count"];
    }
    if (json.containsKey("timestamp")) {
      timestamp = json["timestamp"];
    }
  }

  /** Create JSON Object for UrlCrawlErrorCount */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (timestamp != null) {
      output["timestamp"] = timestamp;
    }

    return output;
  }

  /** Return String representation of UrlCrawlErrorCount */
  core.String toString() => JSON.encode(this.toJson());

}

/** Number of errors per day for a specific error type (defined by platform and category). */
class UrlCrawlErrorCountsPerType {

  /** The crawl error type. */
  core.String category;

  /** The error count entries time series. */
  core.List<UrlCrawlErrorCount> entries;

  /** Corresponding to the user agent that made the request. */
  core.String platform;

  /** Create new UrlCrawlErrorCountsPerType from JSON data */
  UrlCrawlErrorCountsPerType.fromJson(core.Map json) {
    if (json.containsKey("category")) {
      category = json["category"];
    }
    if (json.containsKey("entries")) {
      entries = json["entries"].map((entriesItem) => new UrlCrawlErrorCount.fromJson(entriesItem)).toList();
    }
    if (json.containsKey("platform")) {
      platform = json["platform"];
    }
  }

  /** Create JSON Object for UrlCrawlErrorCountsPerType */
  core.Map toJson() {
    var output = new core.Map();

    if (category != null) {
      output["category"] = category;
    }
    if (entries != null) {
      output["entries"] = entries.map((entriesItem) => entriesItem.toJson()).toList();
    }
    if (platform != null) {
      output["platform"] = platform;
    }

    return output;
  }

  /** Return String representation of UrlCrawlErrorCountsPerType */
  core.String toString() => JSON.encode(this.toJson());

}

/** A time series of the number of URL crawl errors per error category and platform. */
class UrlCrawlErrorsCountsQueryResponse {

  /** The time series of the number of URL crawl errors for per error category and platform. */
  core.List<UrlCrawlErrorCountsPerType> countPerTypes;

  /** Create new UrlCrawlErrorsCountsQueryResponse from JSON data */
  UrlCrawlErrorsCountsQueryResponse.fromJson(core.Map json) {
    if (json.containsKey("countPerTypes")) {
      countPerTypes = json["countPerTypes"].map((countPerTypesItem) => new UrlCrawlErrorCountsPerType.fromJson(countPerTypesItem)).toList();
    }
  }

  /** Create JSON Object for UrlCrawlErrorsCountsQueryResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (countPerTypes != null) {
      output["countPerTypes"] = countPerTypes.map((countPerTypesItem) => countPerTypesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UrlCrawlErrorsCountsQueryResponse */
  core.String toString() => JSON.encode(this.toJson());

}

class UrlCrawlErrorsSample {

  /** The time the error was first detected, in RFC 3339 format. */
  core.String first_detected;

  /** The time when the URL was last crawled, in RFC 3339 format. */
  core.String last_crawled;

  /** The URL of an error, relative to the site. */
  core.String pageUrl;

  /** The HTTP response code, if any. */
  core.int responseCode;

  /** Additional details about the URL, set only when calling get(). */
  UrlSampleDetails urlDetails;

  /** Create new UrlCrawlErrorsSample from JSON data */
  UrlCrawlErrorsSample.fromJson(core.Map json) {
    if (json.containsKey("first_detected")) {
      first_detected = json["first_detected"];
    }
    if (json.containsKey("last_crawled")) {
      last_crawled = json["last_crawled"];
    }
    if (json.containsKey("pageUrl")) {
      pageUrl = json["pageUrl"];
    }
    if (json.containsKey("responseCode")) {
      responseCode = json["responseCode"];
    }
    if (json.containsKey("urlDetails")) {
      urlDetails = new UrlSampleDetails.fromJson(json["urlDetails"]);
    }
  }

  /** Create JSON Object for UrlCrawlErrorsSample */
  core.Map toJson() {
    var output = new core.Map();

    if (first_detected != null) {
      output["first_detected"] = first_detected;
    }
    if (last_crawled != null) {
      output["last_crawled"] = last_crawled;
    }
    if (pageUrl != null) {
      output["pageUrl"] = pageUrl;
    }
    if (responseCode != null) {
      output["responseCode"] = responseCode;
    }
    if (urlDetails != null) {
      output["urlDetails"] = urlDetails.toJson();
    }

    return output;
  }

  /** Return String representation of UrlCrawlErrorsSample */
  core.String toString() => JSON.encode(this.toJson());

}

/** List of crawl error samples. */
class UrlCrawlErrorsSamplesListResponse {

  /** Information about the sample URL and its crawl error. */
  core.List<UrlCrawlErrorsSample> urlCrawlErrorSample;

  /** Create new UrlCrawlErrorsSamplesListResponse from JSON data */
  UrlCrawlErrorsSamplesListResponse.fromJson(core.Map json) {
    if (json.containsKey("urlCrawlErrorSample")) {
      urlCrawlErrorSample = json["urlCrawlErrorSample"].map((urlCrawlErrorSampleItem) => new UrlCrawlErrorsSample.fromJson(urlCrawlErrorSampleItem)).toList();
    }
  }

  /** Create JSON Object for UrlCrawlErrorsSamplesListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (urlCrawlErrorSample != null) {
      output["urlCrawlErrorSample"] = urlCrawlErrorSample.map((urlCrawlErrorSampleItem) => urlCrawlErrorSampleItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of UrlCrawlErrorsSamplesListResponse */
  core.String toString() => JSON.encode(this.toJson());

}

/** Additional details about the URL, set only when calling get(). */
class UrlSampleDetails {

  /** List of sitemaps pointing at this URL. */
  core.List<core.String> containingSitemaps;

  /** A sample set of URLs linking to this URL. */
  core.List<core.String> linkedFromUrls;

  /** Create new UrlSampleDetails from JSON data */
  UrlSampleDetails.fromJson(core.Map json) {
    if (json.containsKey("containingSitemaps")) {
      containingSitemaps = json["containingSitemaps"].toList();
    }
    if (json.containsKey("linkedFromUrls")) {
      linkedFromUrls = json["linkedFromUrls"].toList();
    }
  }

  /** Create JSON Object for UrlSampleDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (containingSitemaps != null) {
      output["containingSitemaps"] = containingSitemaps.toList();
    }
    if (linkedFromUrls != null) {
      output["linkedFromUrls"] = linkedFromUrls.toList();
    }

    return output;
  }

  /** Return String representation of UrlSampleDetails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Access level information for a Webmaster Tools site. */
class WmxSite {

  /** The user's permission level for the site. */
  core.String permissionLevel;

  /** The URL of the site. */
  core.String siteUrl;

  /** Create new WmxSite from JSON data */
  WmxSite.fromJson(core.Map json) {
    if (json.containsKey("permissionLevel")) {
      permissionLevel = json["permissionLevel"];
    }
    if (json.containsKey("siteUrl")) {
      siteUrl = json["siteUrl"];
    }
  }

  /** Create JSON Object for WmxSite */
  core.Map toJson() {
    var output = new core.Map();

    if (permissionLevel != null) {
      output["permissionLevel"] = permissionLevel;
    }
    if (siteUrl != null) {
      output["siteUrl"] = siteUrl;
    }

    return output;
  }

  /** Return String representation of WmxSite */
  core.String toString() => JSON.encode(this.toJson());

}

class WmxSitemap {

  /** The various content types in the sitemap. */
  core.List<WmxSitemapContent> contents;

  /** Number of errors in the sitemap - issues with the sitemap itself, that needs to be fixed before it can be processed correctly. */
  core.int errors;

  /** If true, the sitemap has not been processed. */
  core.bool isPending;

  /** If true, the sitemap is a collection of sitemaps. */
  core.bool isSitemapsIndex;

  /** Date & time in which this sitemap was last downloaded. Date format is in RFC 3339 format (yyyy-mm-dd). */
  core.String lastDownloaded;

  /** Date & time in which this sitemap was submitted. Date format is in RFC 3339 format (yyyy-mm-dd). */
  core.String lastSubmitted;

  /** The url of the sitemap. */
  core.String path;

  /** The type of the sitemap (for example "sitemap"). */
  core.String type;

  /** Number of warnings for the sitemap - issues with URLs in the sitemaps. */
  core.int warnings;

  /** Create new WmxSitemap from JSON data */
  WmxSitemap.fromJson(core.Map json) {
    if (json.containsKey("contents")) {
      contents = json["contents"].map((contentsItem) => new WmxSitemapContent.fromJson(contentsItem)).toList();
    }
    if (json.containsKey("errors")) {
      errors = (json["errors"] is core.String) ? core.int.parse(json["errors"]) : json["errors"];
    }
    if (json.containsKey("isPending")) {
      isPending = json["isPending"];
    }
    if (json.containsKey("isSitemapsIndex")) {
      isSitemapsIndex = json["isSitemapsIndex"];
    }
    if (json.containsKey("lastDownloaded")) {
      lastDownloaded = json["lastDownloaded"];
    }
    if (json.containsKey("lastSubmitted")) {
      lastSubmitted = json["lastSubmitted"];
    }
    if (json.containsKey("path")) {
      path = json["path"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("warnings")) {
      warnings = (json["warnings"] is core.String) ? core.int.parse(json["warnings"]) : json["warnings"];
    }
  }

  /** Create JSON Object for WmxSitemap */
  core.Map toJson() {
    var output = new core.Map();

    if (contents != null) {
      output["contents"] = contents.map((contentsItem) => contentsItem.toJson()).toList();
    }
    if (errors != null) {
      output["errors"] = errors;
    }
    if (isPending != null) {
      output["isPending"] = isPending;
    }
    if (isSitemapsIndex != null) {
      output["isSitemapsIndex"] = isSitemapsIndex;
    }
    if (lastDownloaded != null) {
      output["lastDownloaded"] = lastDownloaded;
    }
    if (lastSubmitted != null) {
      output["lastSubmitted"] = lastSubmitted;
    }
    if (path != null) {
      output["path"] = path;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (warnings != null) {
      output["warnings"] = warnings;
    }

    return output;
  }

  /** Return String representation of WmxSitemap */
  core.String toString() => JSON.encode(this.toJson());

}

/** Information about the various content types in the sitemap. */
class WmxSitemapContent {

  /** The number of URLs from the sitemap that were indexed (of the content type). */
  core.int indexed;

  /** The number of URLs in the sitemap (of the content type). */
  core.int submitted;

  /** The specific type of content in this sitemap (for example "web", "images"). */
  core.String type;

  /** Create new WmxSitemapContent from JSON data */
  WmxSitemapContent.fromJson(core.Map json) {
    if (json.containsKey("indexed")) {
      indexed = (json["indexed"] is core.String) ? core.int.parse(json["indexed"]) : json["indexed"];
    }
    if (json.containsKey("submitted")) {
      submitted = (json["submitted"] is core.String) ? core.int.parse(json["submitted"]) : json["submitted"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for WmxSitemapContent */
  core.Map toJson() {
    var output = new core.Map();

    if (indexed != null) {
      output["indexed"] = indexed;
    }
    if (submitted != null) {
      output["submitted"] = submitted;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of WmxSitemapContent */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
