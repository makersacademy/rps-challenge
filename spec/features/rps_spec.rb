require_relative '../../app.rb'

RSpec.feature "Home page", type: :feature do
	scenario "intro text" do
		visit "/"
		expect(page).to have_content "ROCK PAPER SCISSORS"
	end
end

feature "Enter names" do
	scenario "submitting names" do
		visit "/"
		fill_in :player, with: "Nico"
		click_button "Play"
		expect(page).to have_content "Nico, are you ready to play?\nMake your choice!"
	end
end

feature "Game asset" do
	scenario "when player chooses rock" do
		visit "/"
		fill_in :player, with: "Nico"
		click_button "Play"
		click_button "Rock"
		expect(page).to have_content "Nico, your choice is ROCK!"
	end
end