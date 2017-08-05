feature 'choosing weapon' do
  scenario 'player submits name' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button 'play'
    click_button 'rock'
    expect(page).to have_content( 'Bob chooses rock')
  end
end
