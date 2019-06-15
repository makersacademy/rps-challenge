feature 'Enter player\'s name' do
  scenario 'Player registers name before playing game' do
    visit '/'
    fill_in(:player, with: "Tolu")
    click_button "Play"
    expect(page).to have_content("Welcome to the game Tolu")
  end
end
