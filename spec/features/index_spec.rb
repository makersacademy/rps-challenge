feature 'Index screen' do
  scenario 'Displays welcome message' do
    visit '/'
    expect(page).to have_content("Rock, Paper, Scissors!")
  end


end
