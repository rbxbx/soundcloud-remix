require 'yaml'

SETTINGS = YAML.load_file(File.join(Rails.root, "config", "settings.yml"))

SETTINGS["remix_group_id"] = HTTParty.get("http://api.soundcloud.com/resolve?url=#{SETTINGS["remix_group_url"]}", :format => :xml)["group"]["id"]