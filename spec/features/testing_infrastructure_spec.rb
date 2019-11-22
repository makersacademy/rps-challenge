feature 'Testing Welcome page' do
  scenario 'Display content of home page' do
    visit('/')
    expect(page).to have_content 'Welcome to the game! Please enter your name.'
  end
end
