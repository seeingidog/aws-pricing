module AWSPricing
  class CloudFront
    #Cloudfront pricing data
  
  
    #Returns Hash of request pricing information
    def self.requests
      Base.get('/cloudfront/pricing/pricing-cloudfront-requests')
    end
    
    #Returns Hash of data transfer pricing information
    def self.data_transfer
      Base.get('/cloudfront/pricing/pricing-cloudfront-on-demand')
    end
  
  end
end
