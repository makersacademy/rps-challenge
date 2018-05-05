feature 'register before the start of the game' do
  scenario 'enter player name' do
    visit('/')
    fill_in :player, with: 'Bob'
    click_button 'Start'
    expect(page).to have_content 'Bob, choose your weapon'
  end
end
