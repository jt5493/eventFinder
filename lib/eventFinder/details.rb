class EventFinder::Details
    attr_accessor :sale_status, :venue, :date, :genre, :event, :ticket_url

    @@all = []

    def initialize(event, sale_status, venue, date, genre, ticket_url)
        @sale_status = sale_status
        @venue = venue
        @date = date
        @genre = genre
        @event = event
        @@all << self

    end

    def self.all
        @@all
    end




















end