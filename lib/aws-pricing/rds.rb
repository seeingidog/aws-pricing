#http://aws.amazon.com/rds/pricing/mysql/pricing-standard-deployments.json
#http://aws.amazon.com/rds/pricing/mysql/pricing-multiAZ-deployments.json

module AWSPricing
  class RDS < Base
  
    def self.standard
      Base.get('/rds/pricing/mysql/pricing-standard-deployments.json')
    end
  
    def self.multi_az
      Base.get('/rds/pricing/mysql/pricing-multiAZ-deployments.json')
    end
  
  end
end
