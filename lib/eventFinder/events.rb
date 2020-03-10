class EventFinder::Events
    attr_accessor :event, :zipcode, :details

    @@all = []

    def initialize(event, zipcode)
        @event = event
        @zipcode = zipcode
        @@all << self

    end

    def self.all
        @@all
    end








end