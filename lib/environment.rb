require "./lib/eventFinder/version"
require_relative "./eventFinder/cli"
require_relative "./eventFinder/scraper"
require "pry"
require "httparty"

module EventFinder
  class Error < StandardError; end
  # Your code goes here...
end
