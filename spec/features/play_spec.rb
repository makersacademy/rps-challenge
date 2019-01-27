require_relative '../../app.rb'
require 'spec_helper.rb'

feature 'Play Page' do
  scenario "View Rock Paper Scissors Options" do
    sign_in_and_play
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  scenario "Select option to play game" do 
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You Selected Rock")
  end 
end