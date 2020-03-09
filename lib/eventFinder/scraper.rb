class EventFinder::Scraper

    def self.fetch_data(zip)
        url = "https://app.ticketmaster.com/discovery/v2/events.json?postalCode=#{zip}&apikey=O2lM7TkBpe1kU7hgOJPbPDrh3pt49sh9"
        response = HTTParty.get(url) 
        events = response["_embedded"]["events"]
        names = events.each.with_index(1) do |n,index|
            puts "#{index}. #{n["name"]}"
            puts "------------------"
            sleep(1)
        end
    end






















end