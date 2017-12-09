feature 'Enter player name' do
  scenario 'sunbmit name' do
    visit '/'
    fill_in :player_name, with: 'name'
    click_button 'Play'
    expect(page).to have_content 'name vs bot'
  end
end
