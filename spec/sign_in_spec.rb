feature 'Go to /' do
  scenario 'loads page correctly' do
    visit('/')
    expect(page).to have_content("Sign in to play")
  end
end
