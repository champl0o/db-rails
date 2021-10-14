Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  puts 'Running seeds...'
  puts '- ' + File.basename(seed)
  load seed
end