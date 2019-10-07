feature ' single player Enter moves' do
  scenario 'Player 1 can select different moves' do
    single_player_sign_in
    click_button 'Rock'
    expect(page).to have_content 'Nathan made the move: Rock'
  end
end
