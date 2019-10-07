feature 'Welcome page' do
  scenario 'can run app and load index content' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end
