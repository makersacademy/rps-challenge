feature 'The whole game' do
  scenario 'Simple game' do
    visit '/'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors')
  end
end
