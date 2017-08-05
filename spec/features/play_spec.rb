feature 'choosing weapon' do
  scenario 'player choose weapon' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button 'play'
    click_button 'Rock'
    expect(page).to have_content( 'Bob chooses Rock')
  end
end
