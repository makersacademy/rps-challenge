feature 'View score' do
  scenario 'player can see their current score' do
    visit('/')
    fill_in :player_name, with: 'Maggie'
    click_button 'START'
    expect(page).to have_content 'Score : 0'
  end
end
q
