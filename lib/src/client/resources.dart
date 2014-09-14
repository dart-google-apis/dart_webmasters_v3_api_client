part of webmasters_v3_api;

class SitemapsResource_ {

  final Client _client;

  SitemapsResource_(Client client) :
      _client = client;

  /**
   * Deletes a sitemap from this site.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [feedpath] - The URL of the actual sitemap (for example http://www.example.com/sitemap.xml).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String siteUrl, core.String feedpath, {core.Map optParams}) {
    var url = "sites/{siteUrl}/sitemaps/{feedpath}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (feedpath == null) paramErrors.add("feedpath is required");
    if (feedpath != null) urlParams["feedpath"] = feedpath;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves information about a specific sitemap.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [feedpath] - The URL of the actual sitemap (for example http://www.example.com/sitemap.xml).
   *
   * [optParams] - Additional query parameters
   */
  async.Future<WmxSitemap> get(core.String siteUrl, core.String feedpath, {core.Map optParams}) {
    var url = "sites/{siteUrl}/sitemaps/{feedpath}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (feedpath == null) paramErrors.add("feedpath is required");
    if (feedpath != null) urlParams["feedpath"] = feedpath;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new WmxSitemap.fromJson(data));
  }

  /**
   * Lists sitemaps uploaded to the site.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [sitemapIndex] - A URL of a site's sitemap index.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SitemapsListResponse> list(core.String siteUrl, {core.String sitemapIndex, core.Map optParams}) {
    var url = "sites/{siteUrl}/sitemaps";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (sitemapIndex != null) queryParams["sitemapIndex"] = sitemapIndex;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SitemapsListResponse.fromJson(data));
  }

  /**
   * Submits a sitemap for a site.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [feedpath] - The URL of the sitemap to add.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> submit(core.String siteUrl, core.String feedpath, {core.Map optParams}) {
    var url = "sites/{siteUrl}/sitemaps/{feedpath}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (feedpath == null) paramErrors.add("feedpath is required");
    if (feedpath != null) urlParams["feedpath"] = feedpath;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

class SitesResource_ {

  final Client _client;

  SitesResource_(Client client) :
      _client = client;

  /**
   * Adds a site to the set of the user's sites in Webmaster Tools.
   *
   * [siteUrl] - The URL of the site to add.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> add(core.String siteUrl, {core.Map optParams}) {
    var url = "sites/{siteUrl}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Removes a site from the set of the user's Webmaster Tools sites.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String siteUrl, {core.Map optParams}) {
    var url = "sites/{siteUrl}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves information about specific site.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [optParams] - Additional query parameters
   */
  async.Future<WmxSite> get(core.String siteUrl, {core.Map optParams}) {
    var url = "sites/{siteUrl}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new WmxSite.fromJson(data));
  }

  /**
   * Lists your Webmaster Tools sites.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SitesListResponse> list({core.Map optParams}) {
    var url = "sites";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SitesListResponse.fromJson(data));
  }
}

class UrlcrawlerrorscountsResource_ {

  final Client _client;

  UrlcrawlerrorscountsResource_(Client client) :
      _client = client;

  /**
   * Retrieves a time series of the number of URL crawl errors per error category and platform.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [category] - The crawl error category, for example 'serverError'. If not specified, we return results for all categories.
   *   Allowed values:
   *     authPermissions - 
   *     manyToOneRedirect - 
   *     notFollowed - 
   *     notFound - 
   *     other - 
   *     roboted - 
   *     serverError - 
   *     soft404 - 
   *
   * [latestCountsOnly] - If true, returns only the latest crawl error counts.
   *   Default: true
   *
   * [platform] - The user agent type (platform) that made the request, for example 'web'. If not specified, we return results for all platforms.
   *   Allowed values:
   *     mobile - 
   *     smartphoneOnly - 
   *     web - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlCrawlErrorsCountsQueryResponse> query(core.String siteUrl, {core.String category, core.bool latestCountsOnly, core.String platform, core.Map optParams}) {
    var url = "sites/{siteUrl}/urlCrawlErrorsCounts/query";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (category != null && !["authPermissions", "manyToOneRedirect", "notFollowed", "notFound", "other", "roboted", "serverError", "soft404"].contains(category)) {
      paramErrors.add("Allowed values for category: authPermissions, manyToOneRedirect, notFollowed, notFound, other, roboted, serverError, soft404");
    }
    if (category != null) queryParams["category"] = category;
    if (latestCountsOnly != null) queryParams["latestCountsOnly"] = latestCountsOnly;
    if (platform != null && !["mobile", "smartphoneOnly", "web"].contains(platform)) {
      paramErrors.add("Allowed values for platform: mobile, smartphoneOnly, web");
    }
    if (platform != null) queryParams["platform"] = platform;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlCrawlErrorsCountsQueryResponse.fromJson(data));
  }
}

class UrlcrawlerrorssamplesResource_ {

  final Client _client;

  UrlcrawlerrorssamplesResource_(Client client) :
      _client = client;

  /**
   * Retrieves details about crawl errors for a site's sample URL.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [url] - The relative path (without the site) of the sample URL; must be one of the URLs returned by list
   *
   * [category] - The crawl error category, for example 'authPermissions'
   *   Allowed values:
   *     authPermissions - 
   *     manyToOneRedirect - 
   *     notFollowed - 
   *     notFound - 
   *     other - 
   *     roboted - 
   *     serverError - 
   *     soft404 - 
   *
   * [platform] - The user agent type (platform) that made the request, for example 'web'
   *   Allowed values:
   *     mobile - 
   *     smartphoneOnly - 
   *     web - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlCrawlErrorsSample> get(core.String siteUrl, core.String url, core.String category, core.String platform, {core.Map optParams}) {
    var url = "sites/{siteUrl}/urlCrawlErrorsSamples/{url}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (category == null) paramErrors.add("category is required");
    if (category != null && !["authPermissions", "manyToOneRedirect", "notFollowed", "notFound", "other", "roboted", "serverError", "soft404"].contains(category)) {
      paramErrors.add("Allowed values for category: authPermissions, manyToOneRedirect, notFollowed, notFound, other, roboted, serverError, soft404");
    }
    if (category != null) queryParams["category"] = category;
    if (platform == null) paramErrors.add("platform is required");
    if (platform != null && !["mobile", "smartphoneOnly", "web"].contains(platform)) {
      paramErrors.add("Allowed values for platform: mobile, smartphoneOnly, web");
    }
    if (platform != null) queryParams["platform"] = platform;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (url == null) paramErrors.add("url is required");
    if (url != null) urlParams["url"] = url;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlCrawlErrorsSample.fromJson(data));
  }

  /**
   * Lists a site's sample URLs for the specified crawl error category and platform.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [category] - The crawl error category, for example 'authPermissions'
   *   Allowed values:
   *     authPermissions - 
   *     manyToOneRedirect - 
   *     notFollowed - 
   *     notFound - 
   *     other - 
   *     roboted - 
   *     serverError - 
   *     soft404 - 
   *
   * [platform] - The user agent type (platform) that made the request, for example 'web'
   *   Allowed values:
   *     mobile - 
   *     smartphoneOnly - 
   *     web - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UrlCrawlErrorsSamplesListResponse> list(core.String siteUrl, core.String category, core.String platform, {core.Map optParams}) {
    var url = "sites/{siteUrl}/urlCrawlErrorsSamples";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (category == null) paramErrors.add("category is required");
    if (category != null && !["authPermissions", "manyToOneRedirect", "notFollowed", "notFound", "other", "roboted", "serverError", "soft404"].contains(category)) {
      paramErrors.add("Allowed values for category: authPermissions, manyToOneRedirect, notFollowed, notFound, other, roboted, serverError, soft404");
    }
    if (category != null) queryParams["category"] = category;
    if (platform == null) paramErrors.add("platform is required");
    if (platform != null && !["mobile", "smartphoneOnly", "web"].contains(platform)) {
      paramErrors.add("Allowed values for platform: mobile, smartphoneOnly, web");
    }
    if (platform != null) queryParams["platform"] = platform;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UrlCrawlErrorsSamplesListResponse.fromJson(data));
  }

  /**
   * Marks the provided site's sample URL as fixed, and removes it from the samples list.
   *
   * [siteUrl] - The site's URL, including protocol, for example 'http://www.example.com/'
   *
   * [url] - The relative path (without the site) of the sample URL; must be one of the URLs returned by list
   *
   * [category] - The crawl error category, for example 'authPermissions'
   *   Allowed values:
   *     authPermissions - 
   *     manyToOneRedirect - 
   *     notFollowed - 
   *     notFound - 
   *     other - 
   *     roboted - 
   *     serverError - 
   *     soft404 - 
   *
   * [platform] - The user agent type (platform) that made the request, for example 'web'
   *   Allowed values:
   *     mobile - 
   *     smartphoneOnly - 
   *     web - 
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> markAsFixed(core.String siteUrl, core.String url, core.String category, core.String platform, {core.Map optParams}) {
    var url = "sites/{siteUrl}/urlCrawlErrorsSamples/{url}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (category == null) paramErrors.add("category is required");
    if (category != null && !["authPermissions", "manyToOneRedirect", "notFollowed", "notFound", "other", "roboted", "serverError", "soft404"].contains(category)) {
      paramErrors.add("Allowed values for category: authPermissions, manyToOneRedirect, notFollowed, notFound, other, roboted, serverError, soft404");
    }
    if (category != null) queryParams["category"] = category;
    if (platform == null) paramErrors.add("platform is required");
    if (platform != null && !["mobile", "smartphoneOnly", "web"].contains(platform)) {
      paramErrors.add("Allowed values for platform: mobile, smartphoneOnly, web");
    }
    if (platform != null) queryParams["platform"] = platform;
    if (siteUrl == null) paramErrors.add("siteUrl is required");
    if (siteUrl != null) urlParams["siteUrl"] = siteUrl;
    if (url == null) paramErrors.add("url is required");
    if (url != null) urlParams["url"] = url;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

