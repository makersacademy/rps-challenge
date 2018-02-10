feature 'Player move selection' do
  scenario 'Player one selects rock' do
    start_game
    click_button "Rock"
    expect(page).to have_content "Telgi: You have selected Rock."
  end

  scenario 'Player one selects paper' do
    start_game
    click_button "Paper"
    expect(page).to have_content "Telgi: You have selected Paper."
  end
end
