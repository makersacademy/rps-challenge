feature 'welcomes the user' do
  scenario 'asks the user for name' do
    visit '/'
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'allows the user to enter the name and remembers it' do
    sign_in_and_play
    expect(page).to have_content('Bob')
  end
end