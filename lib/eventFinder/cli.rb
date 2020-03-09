class EventFinder::Cli 

    def call
        puts "Welcome to EventFinder. Please enter a zip code to find events in the desired area."
        input = gets.chomp.to_i
        EventFinder::Scraper.fetch_data(input)
    end




end