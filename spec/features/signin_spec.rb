feature 'testing user can sign in' do
  scenario 'user can register by entering their name' do
    visit ('/signin')
    expect(page).to have_content "What is your name?"
    expect(page).to have_content 'Name:'
  end
  scenario 'user can select a button' do
    visit ('/')
    find_button('Enter').click
    visit ('/signin')
    fill_in 'name', with: 'Ashley'
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors') 
  end
end
