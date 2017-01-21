require 'spec_helper'

RSpec.feature "Name form", "type" => feature do
	scenario "User enters a name and submit" do
	name_and_submit
	expect(page).to have_content('Choose your weapon')
	end
end

RSpec.feature "Play a game", "type" => feature do
	scenario "Play a game" do
	name_and_submit
	click_button("paper")
	expect(page).to have_content('Play again')
	end

end
