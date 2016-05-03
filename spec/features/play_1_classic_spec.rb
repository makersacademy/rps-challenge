feature 'Choices available classic mode player1', type: :feature do
  scenario 'one player classic' do
    mode_one_player_classic
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button("scissors")
  end

  scenario 'multiplayer classic' do
    mode_two_players_classic
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content 'Sergio'
  end
end