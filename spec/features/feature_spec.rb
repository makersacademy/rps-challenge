feature 'Home Page' do
  scenario 'User enter home page' do
    visit('/')
    expect(page).to have_content 'Enter your name to play!'
  end
end
