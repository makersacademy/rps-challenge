feature 'Entering name' do
  scenario 'The player can enter their name before starting the game' do
    visit('/')
    fill_in :player, with: 'Glykeria'
    click_button "Let's play!"
    expect(page).to have_content 'What will you choose, Glykeria?'
  end
end
