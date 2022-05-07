feature 'Display player name' do
  scenario 'Players name is printed on /play' do
    visit '/'
    fill_in :name, with: 'Jimmy'
    click_button 'Submit'
    expect(page).to have_content 'Pick an action Jimmy:'
  end
end
