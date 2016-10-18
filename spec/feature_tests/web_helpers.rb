def sign_in_and_play
  allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
  visit '/'
  fill_in :player_name, with: 'Felix'
  click_button 'GO!'
end
