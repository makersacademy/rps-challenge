feature 'Testing setup' do
  scenario 'Run app and check homepage has content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
