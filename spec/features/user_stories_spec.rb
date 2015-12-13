describe "User Stories" do
	

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "So I can see my name in lights, I would like to register my name before playing a game" do
	scenario "Entering a player's name" do
		enter_name_play
		expect(page).to have_content("CHOOSE WISELY")
	end
end





# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors





end