feature 'RPSApp outputs to page' do
  scenario 'can display page to make sure server is running' do
    visit('/')
    expect(page).to have_content 'Let\'s play Rock, Paper, Scissors!'
  end
end
