require 'game'

feature 'playing a game of rps' do
  before do
    sign_in_and_play
  end
  scenario 'choose an option' do
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
    click_button 'Rock'
  end

end
