# Slickplan::Rooftop

A quick gem with includes a Rails generator to create a rake task, to sync a Slickplan XML file with a RooftopCMS.com site.

# Installation

`gem 'slickplan-rooftop'` in your gemfile or `gem install 'slickplan-rooftop'`.

# Use
`rails g slickplan:rooftop:sitemap` to install the rake task

`rake slickplan:generate_pages[/path/to/your/xml]` to generate the pages.

