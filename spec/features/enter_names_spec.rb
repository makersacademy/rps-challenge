feature 'Entering names' do

  scenario 'a player enters their name and it appears on the screen' do
    visit('/')
    fill_in('Name', with: 'Emma')
    click_button('Submit')
    expect(page).to have_content('Hi Emma, welcome to Rock Paper Scissors')
  end

end
