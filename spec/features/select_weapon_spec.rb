require './app.rb'

feature 'Player can select a weapon' do
  scenario 'Player can select rock' do
    sign_in_and_play
    click_button 'rock'
  end
  scenario 'Player can select scissors' do
    sign_in_and_play
    click_button 'scissors'
  end
  scenario 'Player can select paper' do
    sign_in_and_play
    click_button 'paper'
  end
end
