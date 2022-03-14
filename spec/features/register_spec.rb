feature 'User can register a name ' do
  scenario 'user sees an input to enter the first name' do
    visit '/'
    expect(page).to have_content 'Enter your name to play the game.'
    expect(page).to have_button 'Register'
    expect(page).to have_field 'name'
  end
end
