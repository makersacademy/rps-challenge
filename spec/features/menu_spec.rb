feature 'main menu' do
  scenario 'displays options for single player and multiplayer' do
    visit "/"
    expect(page).to have_content "Single Player\nMultiplayer"
  end
end
