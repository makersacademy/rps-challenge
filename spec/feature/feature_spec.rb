require 'spec_helper'

RSpec.feature "Name form", "type" => feature do
	scenario "User enters a name and submit" do
	name_and_submit
	expect(page).to have_content('Choose your weapon')
	end
end

RSpec.feature "One player game", "type" => feature do
	scenario "Play a game" do
	name_and_submit
	click_button("paper")
	expect(page).to have_content('Play again')
	end
end


RSpec.feature "Two player game", "type" => feature do
	scenario "Play a game" do
	two_names_and_submit
	click_button("paper")
	click_button("paper")
	expect(page).to have_content("It's a draw")
	end
end
