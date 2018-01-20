def enter_name_and_confirm
  visit('/')
  allow(Player::WEAPONS).to receive(:sample).and_return(:rock)
  fill_in 'player_1_name', :with => 'Leigh-ann'
  click_button "Let's go"
end

def player_weapon_choice(weapon)
  enter_name_and_confirm
  select weapon, :from => "player_weapon"
  click_button "Lets get started!"
end

def multi_player_names_and_confirm
  visit('/')
  fill_in 'player_1_name', :with => 'Leigh-ann'
  fill_in 'player_2_name', :with => 'Andy'
  click_button "Let's go"
end
