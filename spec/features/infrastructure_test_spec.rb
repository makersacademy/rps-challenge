feature 'Infrastructure test' do
  scenario 'can visit page' do
    visit '/'
    expect(page).to have_content 'Welcome to the Rock, Paper, Scissors app!!!'
  end
end
