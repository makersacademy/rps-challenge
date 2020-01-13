feature 'Registering name' do
  scenario 'The page asks the user to enter their name' do
    visit('/')
    expect(page).to have_content 'Please enter your name:'
  end

  
end
