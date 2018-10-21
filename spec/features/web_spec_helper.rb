def sign_in_and_select(choice = nil)
  visit '/'
  fill_in('name', with: 'Becka')
  click_on('Submit')
  click_on(choice) unless choice.nil?
  click_on('OK') unless choice.nil?
end

def two_player_sign_in
  visit '/'
  fill_in('name', with: 'Becka')
  fill_in('p2_name', with: 'Jess')
  click_on('Submit')
end
