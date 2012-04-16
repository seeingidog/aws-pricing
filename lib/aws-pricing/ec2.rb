module AWSPricing
  class EC2 < Base  
    def self.instances
      Base.get('/ec2/pricing/pricing-on-demand-instances.json')
    end
  
    def self.ebs
      Base.get('/ec2/pricing/pricing-ebs.json')
    end
  
    def self.data_transfer
      Base.get('/ec2/pricing/pricing-data-transfer.json')
    end
    
    def self.elastic_ips
      Base.get('/ec2/pricing/pricing-elastic-ips.json')
    end
    
    def self.cloud_watch
      Base.get('/ec2/pricing/pricing-cloudwatch.json')
    end
    
    def self.elb
      Base.get('/ec2/pricing/pricing-elb.json')
    end
  
  end
end
