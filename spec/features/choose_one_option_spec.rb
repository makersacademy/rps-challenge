require './rps_game.rb'

feature 'Can choose an option' do
  scenario 'Clicks rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You threw a Rock'
  end
end
