class EventFinder::Zipcode
    attr_accessor :zip

    @@all = []

    def initialize(zip)
        @zip = zip
        @@all << self

    end

    def self.all
        @@all
    end










end