RSpec.configure do |config|
  config.include Mongoid::Matchers
end

Fabrication.configure do |config|
  config.fabricator_path = 'data/fabricators'
  config.path_prefix = Rails.root
  config.sequence_start = 10000
end
