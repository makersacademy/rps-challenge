require 'capybara/rspec'

feature 'restarts game' do
  scenario 'player wants to play again' do
    sign_in_and_play
    click_button 'Orange-throat'
    click_button 'Play again'
    expect(page).to have_content 'Welcome to the lizard mating game!'
  end
end 
