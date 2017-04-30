require './rps_game.rb'

feature 'See who wins the round' do
  scenario 'clicks Rock & wins' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You Win!'
  end
end
