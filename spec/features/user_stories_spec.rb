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

	feature "So that I can enjoy myself, I would like to play rock paper scissors" do

		before do
			allow_any_instance_of(Array).to receive(:sample).and_return(:'crocodile')
		end

		scenario "Playing the game" do
			enter_name_play
			click_button("Stingray")
			expect(page).to have_content("STRUTH, YOU BLOODY LOST!")
		end
	end
end