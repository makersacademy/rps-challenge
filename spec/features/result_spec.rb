feature 'start a game of rock paper scissors' do
  scenario 'click button to start game' do
    sign_in_and_play
    click_button 'Start Game'
    click_link 'Rock'
    expect(page).to have_content "You chose rock"
end
end
