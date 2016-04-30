feature 'Choices available', :type => :feature do
  scenario 'one player' do
    mode_one_player_classic
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button("Scissors")
  end

  scenario 'multiplayer' do
    mode_two_players_classic
    expect(page).to_not have_content 'Computer'
    expect(page).to have_content 'Sergio'
  end
end