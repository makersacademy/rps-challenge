require './rps_game.rb'

feature 'Can choose an option' do
  scenario 'Clicks rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You threw: Rock'
  end

  scenario 'Clicks paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You threw: Paper'
  end

  scenario 'Clicks scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You threw: Scissors'
  end
end
