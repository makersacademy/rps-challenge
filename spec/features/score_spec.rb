feature 'display scores' do
  scenario 'new game displays player1 and player 2 scores as 0' do
    players_sign_in("Luke", "Kirsty")
    expect(page).to have_content "Luke: 0"
    expect(page).to have_content "Kirsty: 0"
  end
end