class Foursquare
    
    client = Foursquare2::Client.new(:client_id => 'BMDHBF0RJGOQ4ZTFHL3YW1OQX3NVEWPODZRM3S4IYJHZVSY5', :client_secret => 'ZLBSHHINZUFSKXDDGVD3MJPLBGUHHCZQ4UD0DG40HOC3JK11')
    
    def self.search(query)
        client.search_venues(near: "new york", limit: 10, intent: "browse", query: query, v: 20190425)
    end
    
end