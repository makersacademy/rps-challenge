feature 'Initializing the game' do
  scenario 'User can enter there name' do
    visit '/'
    fill_in('Name', with: 'Mannie')
    click_button('Play')
  end
end
