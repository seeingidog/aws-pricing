module AWSPricing
  class EMR
    #Elastic MapReduce Service pricing data
    
  
    #Returns Hash of pricing information
    def self.pricing
      Base.get('/elasticmapreduce/pricing/pricing-emr')
    end
    
  end
end
