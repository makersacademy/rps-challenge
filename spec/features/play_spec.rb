require 'spec_helper'

feature '/play' do
	
	scenario "page loads successfully" do
		visit("/")
		fill_in("name", with:"Jo")
		click_button("begin")
    expect(page).to have_content("Welcome Jo")
	end

	scenario "page loads successfully" do
		visit("/")
		fill_in("name", with:"Jo")
		click_button("begin")
    expect(page).to have_content("Lets begin! Pick Rock, Paper or Scissors...")
	end
end 
