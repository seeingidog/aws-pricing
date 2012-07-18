module AWSPricing
  class CloudFront
    #Cloudfront pricing data
    CLOUDFRONT_BASE_URL = '/cloudfront/pricing/pricing-cloudfront-'
  
    #Returns Hash of request pricing information
    def self.requests
      Base.get(CLOUDFRONT_BASE_URL + 'requests')
    end
    
    #Returns Hash of data transfer pricing information
    def self.data_transfer
      Base.get(CLOUDFRONT_BASE_URL + 'on-demand')
    end
  
  end
end
