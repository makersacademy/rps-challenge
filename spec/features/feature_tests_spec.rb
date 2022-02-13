feature "the homepage", type: :feature do
 scenario "expects player to fill in their name" do
   visit ('/')
   expect(page).to have_field "player_name"
   expect(page).to have_selector("input[type=submit][value='Enter Name']")
 end
end