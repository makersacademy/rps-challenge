feature 'enter players name to start' do
  scenario 'asks for name' do
    visit('/')
    expect(page).to have_content 'Please enter your name to start the game:'
  end
end

feature 'Direct to playing page' do
  scenario 'entered name and submitted' do
    visit('/')
    fill_in :player_name, with: 'Bob'
    click_button('Submit')
    expect(page).to have_content 'Welcome Bob, please choose an option to start the game:'
  end
end