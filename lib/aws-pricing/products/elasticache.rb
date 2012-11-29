module AWSPricing
  class Elasticache
    #Elasticache Service pricing data
    
  
    #Returns Hash of pricing information
    def self.pricing
      Base.get('/elasticache/pricing/pricing-standard-deployments')
    end
    
  end
end
