module AWSPricing
  class Base
    include HTTParty
    format :json
    base_uri 'http://aws.amazon.com/'
    
  
    def self.get(url)
      super(url).parsed_response['config']
    end
    
  end
end