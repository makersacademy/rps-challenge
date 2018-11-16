feature 'Welcome page' do
  scenario 'players invited to enter names' do
    visit('/')
    expect(page).to have_content "Enter your name"
  end
end
