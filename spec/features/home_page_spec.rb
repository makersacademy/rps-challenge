feature 'Home page' do
  scenario 'has a welcoming message' do
    visit '/'
    expect(page).to have_content 'Hi there visitor!'
    expect(page).to have_content 'Do you want to play a game of RPS?'
    expect(page).to have_content 'Please register your name first.'
    expect(page).to have_field 'Name'
    expect(page).to have_button 'Register'
  end
end
