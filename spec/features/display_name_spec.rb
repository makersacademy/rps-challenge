feature 'player fills in form' do
  scenario 'receives player name through form' do
    sign_in_and_play
    expect(page).to have_content "Welcome Ruby, here is your name in lights!"
end
end

feature 'start a game of rock paper scissors' do
  scenario 'click button to start game' do
    sign_in_and_play
    start_game_and_choose_rock
    expect(page).to have_content "Choose rock, paper or scissors"
end
end
