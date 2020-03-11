class EventFinder::Cli 

    def call
        puts "Welcome to EventFinder. Please enter a zip code to find events in the desired area.".colorize(:blue)
        input = gets.chomp.to_i
        EventFinder::Scraper.fetch_data(input)
        display_events
        display_details
        EventFinder::Events.delete
        call
    end

    def display_events
        EventFinder::Events.all.each.with_index(1) do |e, index|
            sleep(1)
            puts "#{index}. #{e.name}".colorize(:green)
            puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".colorize(:blue)
        end
    end

    def display_details
        puts "To see details on a particular event, type the number associated with that event".colorize(:blue)
        input = gets.chomp.to_i
        index = input - 1
        event_details = EventFinder::Details.all[index]
        puts "Event name: #{event_details.event.name}".colorize(:green)
        puts "Event venue: #{event_details.venue}".colorize(:green)
        puts "Event genre: #{event_details.genre}".colorize(:green)
        puts "Event date: #{event_details.date}".colorize(:green)
        puts "Event sale status: #{event_details.sale_status}".colorize(:green)
        puts "Would you like to see information on purchasing tickets for this event? y/n".colorize(:blue)
        new_input = gets.chomp.downcase
        if new_input == "y"
            puts "To purchase tickets please follow this url: #{event_details.ticket_url}".colorize(:green)
        else
            puts "Would you like to see details on a different event? y/n".colorize(:blue)
            newer_input = gets.chomp.downcase
            if newer_input == "y"
                display_details
            else
                exit
            end
        end
end




end