# frozen_string_literal: true

# rubocop:disable Rails/Output
puts 'Running seeds...'

Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |seed|
  puts "- #{File.basename(seed)}"
  # rubocop:enable Rails/Output
  load seed
end
