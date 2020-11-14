feature 'home page' do
  scenario 'it welcomes you' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end
