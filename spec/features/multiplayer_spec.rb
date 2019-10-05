feature 'Multiplayer' do
  scenario 'select multiplayer from index' do
    visit '/'
    fill_in "player_name", with: "Kevin"
    click_button "Multiplayer"
    expect(page).to have_content("Click OK when your partner has logged in")
    expect(page).not_to have_content("Kevin")
  end

  scenario 'see two player names on the play screen' do
    visit '/'
    fill_in 'player_name', with: "Steve"
    click_button "Multiplayer"
    visit '/'
    fill_in "player_name", with: "Kevin"
    click_button "Multiplayer"
    expect(page).to have_content("Steve VS Kevin")
  end
end