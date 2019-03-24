feature 'User:' do
  scenario 'can exit game' do
    register_2_players_and_start_game
    click_button 'rock'
    click_button 'paper'
    click_button 'Exit'
    expect(current_path).to eq '/'
  end
end
