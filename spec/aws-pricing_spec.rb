require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

include AWSPricing

describe "AwsPricing" do
  
  describe "EC2 pricing" do
    it "returns a hash of instance pricing" do
      EC2.instances.class.should == Hash
    end

    describe "reserved instances" do
      it "returns a hash of reserved linux heavy utilization instance pricing by default" do
        EC2.reserved_instances.class != Hash
      end
      it "returns a hash of reserved linux light utilization instance pricing" do
        EC2.reserved_instances(:os => :linux, :utilization => :light).class.should == Hash
      end
  
      it "returns a hash of reserved linux medium utilization instance pricing" do
        EC2.reserved_instances(:os => :linux, :utilization => :medium).class.should == Hash
      end

      it "returns a hash of reserved linux heavy utlization instance pricing" do
        EC2.reserved_instances(:os => :linux, :utilization => :heavy).class.should == Hash
      end


      it "returns a hash of reserved mswin light utilization instance pricing" do
        EC2.reserved_instances(:os => :mswin, :utilization => :light).class.should == Hash
      end

      it "returns a hash of reserved mswin medium utilization instance pricing" do
        EC2.reserved_instances(:os => :mswin, :utilization => :medium).class.should == Hash
      end

      it "returns a hash of reserved mswin heavy utlization instance pricing" do
        EC2.reserved_instances(:os => :mswin, :utilization => :heavy).class.should == Hash
      end

      it "raises an error if invalid os is provided" do
        lambda { EC2.reserved_instances(:os => :macosx) }.should raise_error
      end

      it "raises an error if invalid utilization is provided" do
        lambda { EC2.reserved_instances(:utilization => :none) }.should raise_error
      end
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
  
  describe "Elasticache pricing" do
    it "returns a hash of standard deployment pricing" do
      Elasticache.pricing.class.should == Hash
    end
        
  end
  
end

