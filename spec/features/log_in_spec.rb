feature 'Log in page' do
  scenario 'Will have a welcome message when the index page is loaded' do
    visit ('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end
