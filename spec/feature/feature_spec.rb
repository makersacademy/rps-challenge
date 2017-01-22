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


RSpec.feature "Draw", "type" => feature do
	scenario "Play a game" do
	two_names_and_submit
	click_button("paper")
	click_button("paper")
	expect(page).to have_content("It's a draw")
	end
end

RSpec.feature "Player one winning", "type" => feature do
	scenario "Play a game" do
	two_names_and_submit
	click_button("rock")
	click_button("paper")
	expect(page).to have_content("Dipper is the winner")
	end
end

RSpec.feature "Player one lose", "type" => feature do
	scenario "Play a game" do
	two_names_and_submit
	click_button("paper")
	click_button("scissors")
	expect(page).to have_content("Mabel is the winner")
	end
end
