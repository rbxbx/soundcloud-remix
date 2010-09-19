require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  %w(observers sweepers mailers middleware).each do |dir|
    config.load_paths << "#{RAILS_ROOT}/app/#{dir}"
  end

  config.time_zone = 'UTC'

end
