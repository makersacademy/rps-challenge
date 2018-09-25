feature 'It has a welcome message' do
  scenario 'when visiting the homepage it has a message' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors game!'
  end
end