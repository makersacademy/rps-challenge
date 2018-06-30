feature 'testing infrastructure' do
  scenario 'displays Welcome to Rock, Paper, Scissors' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
  end
end
