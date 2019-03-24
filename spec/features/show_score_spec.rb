feature 'Game keeps score' do
  scenario 'player score changes after first round' do
    visit '/'
    register_2_players_and_start_game
    click_button 'paper'
    click_button 'rock'
    click_button 'Start again'
    expect(page).to have_content 'Score: Player1 - 1 : Player2 - 0'
  end
end
