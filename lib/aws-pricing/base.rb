module AWSPricing
  class Base
    include HTTParty
    format :json
    base_uri 'http://aws.amazon.com/'
    
    private
    def self.get(url)
      super(url+'.json').parsed_response['config']
    end
    
  end
end