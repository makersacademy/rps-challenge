require_relative '../../app.rb'
require 'spec_helper.rb'

feature 'GAME Options' do
  scenario "The user can view Rock Paper Scissors Choices" do
    sign_in_and_play
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "The user can select option to play game" do 
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("You Selected Rock")
  end 
  
  scenario "The game will choose a Rock as a shape option" do 
    sign_in_and_play
    expect(page).to have_content("CPU Selected Rock")
  end 
end