feature 'Starting the game' do
  scenario 'Player one starts the game' do
    sign_in_and_play
    click_button "Start Game"
    expect(page).to have_content "Telgi: Take your Pick..."
  end
end
