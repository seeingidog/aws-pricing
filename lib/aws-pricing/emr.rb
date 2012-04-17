module AWSPricing
  class EMR < Base
    #Elastic MapReduce Service pricing data
    
  
    #Returns Hash of pricing information
    def self.pricing
      Base.get('/elasticmapreduce/pricing/pricing-emr.json')
    end
    
  end
end
