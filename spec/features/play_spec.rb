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

	scenario "Page has a begin button" do 
    sign_in_and_play
    expect(page).to have_button("Rock")
	end 
	
	scenario "Page has a begin button" do 
    sign_in_and_play
    expect(page).to have_button("Paper")
	end 
	
	scenario "Page has a begin button" do 
    sign_in_and_play
    expect(page).to have_button("Scissors")
  end 
end 
