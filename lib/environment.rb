require "./lib/eventFinder/version"
require_relative "./eventFinder/cli"
require_relative "./eventFinder/scraper"
require_relative "./eventFinder/events"
require_relative "./eventFinder/details"
require_relative "./eventFinder/zipcode"
require "pry"
require "httparty"
require "colorize"

module EventFinder
  class Error < StandardError; end
  # Your code goes here...
end
