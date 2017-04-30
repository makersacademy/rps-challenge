require './rps_game.rb'

feature 'Computer chooses a shape' do
  scenario 'Chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Computer threw a Rock'
  end
end
