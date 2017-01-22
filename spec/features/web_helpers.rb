def sign_in_and_play
  visit ('/')
  fill_in :player_name, :with => "Tamar"
  click_button "Submit"
end

def choose_weapon_and_fight
  select(:Rock, :from => "weapon_choice")
  click_button "Ok"
end
