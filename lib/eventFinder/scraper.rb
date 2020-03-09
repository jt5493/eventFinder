class EventFinder::Scraper

    def self.fetch_data(zip)
        url = "https://app.ticketmaster.com/discovery/v2/events.json?postalCode=#{zip}&apikey=O2lM7TkBpe1kU7hgOJPbPDrh3pt49sh9"
        response = HTTParty.get(url) 
        if !response.empty?
            zip_instance = EventFinder::Zipcode.new(zip)
            events = response["_embedded"]["events"]
            events.each do |n|
                name = n["name"]
                sale_status = n["dates"]["status"]["code"]
                venue = n["_embedded"]["venues"][0]["name"]
                date = n["dates"]["start"]["localDate"]
                genre = n["_embedded"]["attractions"][0]["classifications"][0]["genre"]["name"]
                sale_site = n["url"]
            end
        end
    end






















end