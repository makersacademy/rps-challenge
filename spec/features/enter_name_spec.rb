feature 'Enter name' do
  scenario 'registering name' do
    visit('/')
    fill_in :player_name, with: 'Anna'
    click_button 'Enter Game'
    expect(page).to have_content 'Welcome Anna'
  end
end
