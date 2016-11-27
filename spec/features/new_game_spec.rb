require 'spec_helper'

feature "Start a new game" do

	scenario "Player can start a new game" do
		sign_in_and_play
		click_button "Paper"
		click_button "Rematch!"
		expect(page).to have_content("Kim vs The Computer")
	end

end