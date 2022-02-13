feature "the homepage", type: :feature do
 scenario "expects a form for players to enter their name" do
   visit ('/')
   expect(page).to have_field "player_name"
   expect(page).to have_selector("input[type=submit][value='Enter Name']")
 end
end

feature "entering a name", type: :feature do
  scenario "display the player name" do
    sign_in_and_play
    
  end
 end