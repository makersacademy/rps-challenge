require './app.rb'

feature 'enter player name' do
  scenario 'can enter the name of the player' do
    sign_in
    expect(page).to have_content 'Kris'
  end
  scenario 'player is asked to enter their choice after their name' do
    sign_in
    expect(page).to have_content 'To play, please enter Rock, Paper, or Scissors!'
  end
end