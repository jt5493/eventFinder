class EventFinder::Cli 

    def call
        puts "Welcome to EventFinder. Please enter a zip code to find events in the desired area."
        input = gets.chomp.to_i
        EventFinder::Scraper.fetch_data(input)
        # display_events
        # display_details
    end

    def display_events

    end

    def display_details
        puts "To see details on a particular event, type the number associated with that event"
        input = gets.chomp.to_i
    end




end