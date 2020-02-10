feature 'getting names' do
  scenario 'records the players names' do
    sign_in_and_play_two_players
    expect(page).to have_content("Tango")
    expect(page).to have_content("Cash")
  end
end
