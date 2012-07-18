module AWSPricing
  class S3
    #Simple Storage Service pricing data
    
    S3_BASE_URL = '/s3/pricing/pricing-'
    
    #Returns Hash of storage pricing information   
    def self.storage
      Base.get(S3_BASE_URL + 'storage')
    end
    
    #Returns Hash of data transfer pricing information   
    def self.data_transfer
      Base.get(S3_BASE_URL + 'data-transfer')
    end
    
    #Returns Hash of request pricing information
    def self.requests
      Base.get(S3_BASE_URL + 'requests')
    end
  end
  
end
