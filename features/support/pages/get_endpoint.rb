class BasicAPI
    include HTTParty
    def get_endpoint(url)
        self.class.get(url)
    end
end