// prefer default export if available
const preferDefault = m => m && m.default || m


exports.components = {
  "component---cache-dev-404-page-js": preferDefault(require("/Users/deezel/Improved/.cache/dev-404-page.js")),
  "component---src-templates-blog-post-js": preferDefault(require("/Users/deezel/Improved/src/templates/blog-post.js")),
  "component---src-pages-index-js": preferDefault(require("/Users/deezel/Improved/src/pages/index.js"))
}

exports.json = {
  "layout-index.json": require("/Users/deezel/Improved/.cache/json/layout-index.json"),
  "dev-404-page.json": require("/Users/deezel/Improved/.cache/json/dev-404-page.json"),
  "layout-index.json": require("/Users/deezel/Improved/.cache/json/layout-index.json"),
  "welcome-to-improved.json": require("/Users/deezel/Improved/.cache/json/welcome-to-improved.json"),
  "layout-index.json": require("/Users/deezel/Improved/.cache/json/layout-index.json"),
  "index.json": require("/Users/deezel/Improved/.cache/json/index.json")
}

exports.layouts = {
  "component---src-layouts-index-js": preferDefault(require("/Users/deezel/Improved/.cache/layouts/index.js"))
}