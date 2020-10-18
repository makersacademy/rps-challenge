feature 'multiplayer option' do
  scenario 'user can choose multiplayer' do
    visit('/')
    expect(page).to have_button("Multiplayer")
  end
end

feature 'current turn displayed on screen' do
  scenario "player 1's turn on screen at start" do
    multiplayer_names_and_play
    expect(page).to have_content('Make your choice, Harry')
  end

  scenario "player 2's turn after player 2" do
    multiplayer_names_and_play
    click_button('Rock')
    expect(page).to have_content('Make your choice, Ron')
  end
end
