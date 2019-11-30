def log_in_and_start
  visit '/'
  fill_in 'player', with: 'Steve'
  click_on 'Start'
end

