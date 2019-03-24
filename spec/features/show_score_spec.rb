
feature 'Game keeps score' do
  scenario 'player score changes after first round' do
    visit '/'
    fill_in "player1",	with: "Player1"
    fill_in "player2",	with: "Player2"
    click_button 'Start game'
    click_button 'Paper'
    click_button 'Rock'
    click_button 'Start again'
    expect(page).to have_content 'Score: Player1 - 1 : Player2 - 0'
  end
end