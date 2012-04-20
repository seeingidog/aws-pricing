module AWSPricing
  class RDS
    #Relation Database Service pricing data
    
  
    #Returns Hash of standard deployment pricing information
    def self.standard
      Base.get('/rds/pricing/mysql/pricing-standard-deployments.json')
    end
    
    #Returns Hash of multi-availability zone deployment pricing information
    def self.multi_az
      Base.get('/rds/pricing/mysql/pricing-multiAZ-deployments.json')
    end
  
  end
end
