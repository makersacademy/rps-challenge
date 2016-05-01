feature 'Result', type: :feature do
  scenario 'multiplayer win/lose' do
    mode_two_players_classic
    click_button("rock")
    click_button("scissors")
    expect(page).to have_content 'win'
  end
end