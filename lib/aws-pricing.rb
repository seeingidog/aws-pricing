require 'httparty'
require 'json'
dir = File.expand_path(File.join(File.dirname(__FILE__),  'aws-pricing'))
require File.join(dir, 'base')

['ec2','s3','cloudfront', 'emr', 'rds', 'elasticache', 'glacier'].each do |req|
  require File.join(dir + "/products", req)
end
