module.exports = {
  defaultBrowser: "Safari",
  rewrite: [
    {
      // Redirect all urls to use https
      match: ({ url }) => url.protocol === "http",
      url: { protocol: "https" }
    }
  ],
  handlers: [
    {
      match: [
        "google.com/*", // match google.com urls
        "*.google.com/*", // match meet.google.com subdomains
      ],
      browser: "Google Chrome"
    }
  ]
};
