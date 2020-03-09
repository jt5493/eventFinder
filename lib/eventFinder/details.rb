class EventFinder::Details
    attr_accessor :sale_status, :venue, :date, :genre

    @@all = []

    def initialize(sale_status, venue, date, genre)
        @sale_status = sale_status
        @venue = venue
        @date = date
        @genre = genre
        @@all << self

    end

    def self.all
        @@all
    end




















end