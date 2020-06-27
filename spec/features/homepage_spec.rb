feature 'Testing infrastructure' do
  scenario 'Home page contains text' do
    visit '/'
    expect(page).to have_content('Welcome to the R.P.S game!')
  end
end
