feature 'Starting the game' do
  scenario 'The player enters their name' do
    visit '/'
    fill_in :name, with: 'Jess'
    click_button 'Play'
    expect(page).to have_content 'Pick your weapon Jess'
  end
end
