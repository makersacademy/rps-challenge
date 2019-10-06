feature ' multiplayer enter moves' do
  scenario 'Player 1 can select different moves' do
    multiplayer_sign_in
    expect(page).to have_content 'Player 1 select your move'
    expect(page).to have_button 'Rock'
  end

  scenario 'Player 2 can select different moves' do
    multiplayer_sign_in
    click_button 'Rock'
    expect(page).to have_content 'Player 2 select your move'
    expect(page).not_to have_content 'Player 1 select your move'
  end
end
