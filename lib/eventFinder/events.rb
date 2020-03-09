class EventFinder::Events
    attr_accessor :event, :zipcode, :details

    @@all = []

    def initialize(event, zipcode, details)
        @event = event
        @zipcode = zipcode
        @details = details
        @@all << self

    end

    def self.all
        @@all
    end








end