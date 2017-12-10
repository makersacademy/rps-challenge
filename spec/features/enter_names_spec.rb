feature 'entering player names' do

  scenario 'a player can enter their name in a form' do
    sign_in_and_play_solo
    expect(page).to have_content 'Player vs. Computer'
  end

end
