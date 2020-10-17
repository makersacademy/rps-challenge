feature 'multiplayer option' do
  scenario 'user can choose multiplayer' do
    visit('/')
    expect(page).to have_content("Would you like to play multiplayer or solo?")
  end
end

feature 'current turn displayed on screen' do
  scenario "player 1's turn displayed on screen at start" do
    visit('/')
    click_button('Multiplayer')
    fill_in :player_1, with: "Harry"
    fill_in :player_2, with: "Ron"
    click_button('Begin')
    expect(page).to have_content('Make your choice, Harry')
  end
end