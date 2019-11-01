feature 'Welcome page' do
  scenario 'displays welcome message' do
    visit('/')
    expect(page).to have_text("Welcome")
  end
end
