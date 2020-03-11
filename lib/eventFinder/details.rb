class EventFinder::Details
    attr_accessor :sale_status, :venue, :date, :genre, :event, :ticket_url

    @@all = []

    def initialize(detail_hash, event)
        @sale_status = detail_hash[:sale_status]
        @venue = detail_hash[:venue]
        @date = detail_hash[:date]
        @genre = detail_hash[:genre]
        @event = event
        @ticket_url = detail_hash[:buy_tickets]
        @@all << self

    end

    def self.all
        @@all
    end


end