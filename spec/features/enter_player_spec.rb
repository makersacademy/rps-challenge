require 'spec_helper'

feature "Entering names" do

	scenario "Player enters their name" do
		visit "/"
		fill_in :player_name, with: "Kim"
		click_button "Play!"
		expect(page).to have_content("Kim vs The Computer")
	end

end