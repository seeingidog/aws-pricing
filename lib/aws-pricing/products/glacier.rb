module AWSPricing
  class Glacier
    #Glacier Storage Service pricing data
    
  
    #Returns Hash of data storage pricing information
    def self.storage
      Base.get('/glacier/pricing/pricing-storage')
    end

    #Returns Hash of data transfer pricing information
    def self.transfer
      Base.get('/glacier/pricing/pricing-data-transfer')
    end
    
  end
end
