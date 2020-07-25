feature 'enter player name' do
  scenario 'player enters name and is taken to welcome page' do
    visit '/'
    fill_in :player_name, with: 'Ralph'
    click_button 'Go!'
    expect(page).to have_content 'Welcome Ralph!'
  end
end
