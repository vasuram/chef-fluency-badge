# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vasu"
client_key               "#{current_dir}/vasu.pem"
chef_server_url          "https://ip-10-0-1-24.us-west-2.compute.internal/organizations/vasuchef"
cookbook_path            ["#{current_dir}/../cookbooks"]
