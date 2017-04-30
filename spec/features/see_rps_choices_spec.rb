require './rps_game.rb'

feature 'Presents choices' do
  scenario 'Player can see their name' do
    sign_in_and_play
    expect(page).to have_content 'The Donald'
  end

  scenario 'Available Choices' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end
end
