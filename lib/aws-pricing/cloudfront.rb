module AWSPricing
  class CloudFront < Base
  
    def self.requests
      Base.get('/cloudfront/pricing/pricing-cloudfront-requests.json')
    end
  
    def self.data_transfer
      Base.get('/cloudfront/pricing/pricing-cloudfront-on-demand.json')
    end
  
  end
end
