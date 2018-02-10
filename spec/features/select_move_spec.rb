feature 'Player move selection' do
  scenario 'Player one selects rock' do
    start_game
    click_button "Rock"
    expect(page).to have_content "Telgi: You have selected Rock."
  end
end
