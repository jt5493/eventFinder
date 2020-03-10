class EventFinder::Events
    attr_accessor :name, :zipcode, :details

    @@all = []

    def initialize(name, zipcode)
        @name = name
        @zipcode = zipcode
        @@all << self

    end

    def self.all
        @@all
    end








end