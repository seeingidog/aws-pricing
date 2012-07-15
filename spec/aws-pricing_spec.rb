require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

include AWSPricing

describe "AwsPricing" do
  
  describe "EC2 pricing" do
    it "returns a hash of instance pricing" do
      EC2.instances.class.should == Hash
    end
  
    it "returns a hash of ebs pricing" do
      EC2.ebs.class.should == Hash
    end
  
    it "returns a hash of data transfer pricing" do
      EC2.data_transfer.class.should == Hash
    end
    
    it "returns a hash of elb pricing" do
      EC2.elb.class.should == Hash
    end
    
    it "returns a hash of cloudwatch pricing" do
      EC2.cloud_watch.class.should == Hash
    end
    
    it "returns a hash of elastic ip pricing" do
      EC2.elastic_ips.class.should == Hash
    end
    
    it "returns a hash of spot instance pricing from jsonp callback hack" do
      EC2.spot_instances.class.should == Hash
    end
    
  end
  
  describe "S3 Pricing" do
    it "returns a hash of storage pricing" do
      S3.storage.class.should == Hash
    end
    it "returns a hash of data transfer pricing" do
      S3.data_transfer.class.should == Hash
    end
    it "returns a hash of requests pricing" do
      S3.requests.class.should == Hash
    end
  end
  
  describe "Cloudfront pricing" do
    it "returns a hash of requests pricing" do
      CloudFront.data_transfer.class.should == Hash
    end
    it "returns a hash of requests pricing" do
      CloudFront.requests.class.should == Hash
    end
  end
  
  describe "Elastic Mapreduce pricing" do
    it "returns a hash of pricing" do
      EMR.pricing.class.should == Hash
    end
  end
  
  describe "RDS pricing" do
    it "returns a hash of standard deployment pricing" do
      RDS.standard.class.should == Hash
    end
    
    it "returns a hash of multi-az deployment pricing" do
      RDS.multi_az.class.should == Hash
    end
    
  end
end

