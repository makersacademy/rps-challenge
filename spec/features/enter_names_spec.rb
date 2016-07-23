feature 'Initializing the game' do
  scenario 'User can enter there name and expect name output on page' do
    visit '/'
    fill_in('name', with: 'Mannie')
    click_button('Play')
    expect(page).to have_content('Welcome Mannie')
  end
end
