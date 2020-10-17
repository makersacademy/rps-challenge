feature 'multiplayer' do
  scenario 'user can choose multiplayer' do
    visit('/')
    click_button('Multiplayer')
    fill_in :player_1, with: "Harry"
    fill_in :player_2, with: "Ron"
    click_button('Begin')
    expect(page).to have_content('Make your choice, Harry')
  end
end
