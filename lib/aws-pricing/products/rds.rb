module AWSPricing
  class RDS
    #Relation Database Service pricing data
    
    RDS_BASE_URL = '/rds/pricing/mysql/pricing-'
    
    #Returns Hash of standard deployment pricing information
    def self.standard
      Base.get(RDS_BASE_URL + 'standard-deployments')
    end
    
    #Returns Hash of multi-availability zone deployment pricing information
    def self.multi_az
      Base.get(RDS_BASE_URL + 'multiAZ-deployments')
    end
  
  end
end
