class EventFinder::Scraper

    def fetch_data
        url = https://app.ticketmaster.com/discovery/v2/events.json?postalCode=#{zip}&apikey=O2lM7TkBpe1kU7hgOJPbPDrh3pt49sh9
        response = HTTParty.get(url)
        binding.pry 
    end






















end