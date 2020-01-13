feature 'Registering name' do
  scenario 'The page asks the user to enter their name' do
    visit('/')
    expect(page).to have_content 'Please enter your name:'
  end

  scenario 'Entering a name on a form returns a page containing name' do
    submit_name
    expect(page).to have_content 'Andy'
  end

end
