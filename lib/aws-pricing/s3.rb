module AWSPricing
  class S3
    #Simple Storage Service pricing data
    
    #Returns Hash of storage pricing information   
    def self.storage
      Base.get('/s3/pricing/pricing-storage')
    end
    
    #Returns Hash of data transfer pricing information   
    def self.data_transfer
      Base.get('/s3/pricing/pricing-data-transfer')
    end
    
    #Returns Hash of request pricing information
    def self.requests
      Base.get('/s3/pricing/pricing-requests')
    end
  end
  
end
