require 'yaml'

SETTINGS = YAML.load_file(File.join(Rails.root, "config", "settings.yml"))

SETTINGS["group_id"] = HTTParty.get("http://api.soundcloud.com/resolve?url=#{SETTINGS["group_url"]}", :format => :xml)["group"]["id"]

SETTINGS["instructions"] = File.read("#{RAILS_ROOT}/config/instructions.txt")