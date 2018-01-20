def enter_name_and_confirm
  visit('/')
  fill_in 'player_name', :with => 'Leigh-ann'
  click_button "Let's go"
end

def player_weapon_choice(weapon)
  enter_name_and_confirm
  select weapon, :from => "player_weapon"
  click_button "Lets get started!"
end
