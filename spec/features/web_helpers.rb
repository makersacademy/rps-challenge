def give_name_heraldo
  visit('/')
  fill_in :name1, with: 'Heraldo'
  click_button 'Submit'
end

def reset_database
  RPS::DATABASE.contents.slice!(0..-1)
  RPS::DATABASE.contents[0]=Player.new
end
