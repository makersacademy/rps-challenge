feature 'enter player name' do
  scenario 'fill in the name' do
    visit '/'
    fill_in :player_name, with: 'Joyce'
    click_button 'Submit'
    expect(page).to have_content "Joyce, what's your choice?"
  end 
end