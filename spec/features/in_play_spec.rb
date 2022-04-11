feature 'deciding on move' do
  scenario 'displaying player name' do
    one_player_start
    expect(page).to have_content "So, what's your move Mika?"
  end
  scenario 'choosing rock' do
    one_player_start
    find_button('Rock').click
  end
  scenario 'choosing paper' do
    one_player_start
    find_button('Paper').click
  end
  scenario 'choosing scissors' do
    one_player_start
    find_button('Scissors').click
  end
end
