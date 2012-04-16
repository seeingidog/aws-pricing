module AWSPricing
  class EMR < Base  
    def self.pricing
      Base.get('/elasticmapreduce/pricing/pricing-emr.json')
    end
    
  end
end
