class EventFinder::Scraper

    def self.fetch_data(zip)
        url = "https://app.ticketmaster.com/discovery/v2/events.json?postalCode=#{zip}&apikey=O2lM7TkBpe1kU7hgOJPbPDrh3pt49sh9"
        response = HTTParty.get(url) 
        if !response.empty?
            zip_instance = EventFinder::Zipcode.new(zip)
            events = response["_embedded"]["events"]
            events.each do |n|
                binding.pry
            end
        end
    end






















end