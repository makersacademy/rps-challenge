feature 'Homepage test' do
  scenario 'Run app, open homepage and display welcome message' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end 