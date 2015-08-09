require 'spec_helper'

feature "Starting a new game" do
  scenario "I  enter my name, click Play & am taken to new game" do
    visit "/"
    fill_in "name_field", with: "Bob"
    click_on "submit_btn"
    expect(page).to have_content "Choose Rock, Paper or Scissors, Bob!"
  end
end

feature "User makes a RPS selection" do
	scenario "I choose R, P or S and am shown the result" do
		visit "/gameplay"
		click_link "r"
		expect(page).to have_content "You selected Rock"
	end

	scenario "Player is shown they are the winner or loser (& the computer choice)" do
		visit "/gameplay"
		click_link "r"
		expect(page).to have_content "Hi"
	end

	scenario "User can go back to play again" do
		visit "/gameplay"
		click_link "r"
		click_link "play_again"
		expect(page).to have_content "Choose Rock, Paper or Scissors"
	endx

end




