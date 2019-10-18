feature 'Enter name' do
  scenario 'Player can enter their name' do
    visit('/')
    fill_in :player_name, with: 'Will'
    click_button('Prepare to battle!')
    expect(page).to have_content 'Welcome to the fight, Will!'
  end
end
