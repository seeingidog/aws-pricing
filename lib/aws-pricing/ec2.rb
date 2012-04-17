module AWSPricing
  class EC2 < Base
    #Elastic Compute pricing data
    
  
    #Returns Hash of on-demand server instance pricing information
    def self.instances
      Base.get('/ec2/pricing/pricing-on-demand-instances.json')
    end
    
    #Returns Hash of current spot instance pricing information (5m)
    def self.spot_instances
      callback_response = Net::HTTP.get_response(URI.parse 'http://spot-price.s3.amazonaws.com/spot.js').body
      callback_response.gsub!('callback(','')
      callback_response.slice!(callback_response.length-1)
      JSON.parse callback_response
    end
  
    #Returns Hash of elastic block storage pricing information
    def self.ebs
      Base.get('/ec2/pricing/pricing-ebs.json')
    end
  
    #Returns Hash of data transfer pricing information
    def self.data_transfer
      Base.get('/ec2/pricing/pricing-data-transfer.json')
    end
    
    #Returns Hash of elastic IP pricing information
    def self.elastic_ips
      Base.get('/ec2/pricing/pricing-elastic-ips.json')
    end
    
    #Returns Hash of Cloudwatch monitoring pricing information
    def self.cloud_watch
      Base.get('/ec2/pricing/pricing-cloudwatch.json')
    end
    
    #Returns Hash of elastic loadbalancer pricing information
    def self.elb
      Base.get('/ec2/pricing/pricing-elb.json')
    end
      
  end
end
