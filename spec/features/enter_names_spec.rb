feature 'Enter names' do
  scenario 'should let a player enter a name' do
    visit('/')
    fill_in :player_name, with: 'Daniel'
    click_button 'Go!'
    expect(page).to have_content 'Welcome Daniel, get ready to FIGHT!'
  end

end
