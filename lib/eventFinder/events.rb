class EventFinder::Events
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def self.all
        @@all
    end

    def self.delete
        self.all.clear
    end

end