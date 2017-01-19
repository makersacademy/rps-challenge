require 'spec_helper'

feature "Displaying the result" do

	scenario "Player's choice is shown" do
		sign_in_and_play
		srand(2) # computer will choose rock
		click_button "Paper"
		expect(page).to have_content("Kim chose Paper")
	end

	scenario "Computer's choice is shown" do
		sign_in_and_play
		srand(2)
		click_button "Paper"
		expect(page).to have_content("Computer chose Rock")
	end

	scenario "Player has won" do
		sign_in_and_play
		srand(2)
		click_button "Paper"
		expect(page).to have_content("You chose wisely. Kim wins!")
	end

	scenario "Computer has won" do
		sign_in_and_play
		srand(2)
		click_button "Scissors"
		expect(page).to have_content("You chose poorly. Computer wins!")
	end

	scenario "It's a draw" do
		sign_in_and_play
		srand(2)
		click_button "Rock"
		expect(page).to have_content("Looks like it's a draw. How boring.")
	end

end