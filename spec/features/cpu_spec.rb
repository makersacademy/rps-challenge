feature 'player vs game' do
  scenario 'confirming player choice and the game to choose its choice' do
    visit('/')
    fill_in :player, with: 'karho'
    click_button 'submit'
    fill_in :weapon, with: 'rock'
    click_button 'submit'
    expect(page).to have_content "karho's choice rock"
  end
end
