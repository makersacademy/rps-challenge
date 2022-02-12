feature 'testing user can sign in' do
  scenario 'user can register by entering their name' do
    # visit ('/')
    # find_button('Enter').click
    visit ('/signin')
    expect(page).to have_content "What is your name?"
    expect(page).to have_content 'Name:'
  end
end