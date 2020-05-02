require 'spec_helper'

feature '/play' do
	
	scenario "page loads successfully" do
		sign_in_and_play
    expect(page).to have_content("Welcome Jo")
	end

	scenario "page loads successfully" do
		sign_in_and_play
    expect(page).to have_content("Lets begin! Pick Rock, Paper or Scissors...")
	end
end 
