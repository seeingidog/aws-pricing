require 'httparty'
require 'json'
dir = File.expand_path(File.join(File.dirname(__FILE__),  'aws-pricing'))
['base', 'ec2','s3','cloudfront', 'emr', 'rds'].each do |req|
  require File.join(dir, req)
end

module AWSPricing    
  
end