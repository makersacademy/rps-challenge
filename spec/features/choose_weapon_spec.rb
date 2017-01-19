require 'spec_helper'

feature "Choose your weapon" do

	scenario "Player is asked to pick a weapon" do
		sign_in_and_play
		expect(page).to have_content("Choose your weapon!")
	end

	scenario "Player could choose rock" do
		sign_in_and_play
		expect(page).to have_selector(:button, "Rock")
	end

	scenario "Player could choose paper" do
		sign_in_and_play
		expect(page).to have_selector(:button, "Paper")
	end

	scenario "Player could choose scissors" do
		sign_in_and_play
		expect(page).to have_selector(:button, "Scissors")
	end

	scenario "Player could choose lizard" do
		sign_in_and_play
		expect(page).to have_selector(:button, "Lizard")
	end

	scenario "Player could choose spock" do
		sign_in_and_play
		expect(page).to have_selector(:button, "Spock")
	end

end