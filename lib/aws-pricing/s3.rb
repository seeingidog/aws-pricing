module AWSPricing
  class S3 < Base    
    def self.storage
      Base.get('/s3/pricing/pricing-storage.json')
    end
    
    def self.data_transfer
      Base.get('/s3/pricing/pricing-data-transfer.json')
    end
    
    def self.requests
      Base.get('/s3/pricing/pricing-requests.json')
    end
  end
  
end
