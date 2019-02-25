feature 'Login page' do
  scenario 'has a descriptive header' do
    visit('/')
    expect(page).to have_content("Welcome Dear Visitor! Let's play a game")
  end
end
