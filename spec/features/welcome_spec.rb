feature 'Welcome page' do
  scenario 'It shows Welcome to Rock, Paper, Scissors!' do
    visit('/')
    expect(page).to have_content("Welcome to Rock, Paper, Scissors!!")
  end
end
