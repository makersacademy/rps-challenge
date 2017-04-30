require './rps_game.rb'

feature 'Presents choices' do
  scenario 'Player can see their name' do
    sign_in_and_play
    expect(page).to have_content 'The Donald'
  end

  scenario 'Clicks Rock' do
    sign_in_and_play
    click_button 'Rock'
  end

  scenario 'Clicks Paper' do
    sign_in_and_play
    click_button 'Paper'
  end

  scenario 'Clicks Scissors' do
    sign_in_and_play
    click_button 'Scissors'
  end
end
