# frozen_string_literal: true

Dir[Rails.root, 'db/seeds/*.rb'].sort.each do |seed|
  Rails.logger.debug 'Running seeds...'
  Rails.logger.debug "- #{File.basename(seed)}"
  load seed
end
