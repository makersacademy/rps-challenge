require 'spec_helper'

feature "Entering names" do

	scenario "Player enters their name" do
		sign_in_and_play
		expect(page).to have_content("Kim vs The Computer")
	end

end