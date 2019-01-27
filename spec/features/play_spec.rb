require_relative '../../app.rb'
require 'spec_helper.rb'

feature 'Game Options' do
  scenario "View Rock Paper Scissors Choices" do
    sign_in_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "Select option to play game" do 
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You Selected Rock")
  end 
end