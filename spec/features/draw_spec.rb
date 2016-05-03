feature 'Result', type: :feature do
  scenario 'multiplayer draw' do
    mode_two_players_classic
    click_button("rock")
    click_button("Submit")
    click_button("rock")
    expect(page).to have_content 'draw'
  end
end