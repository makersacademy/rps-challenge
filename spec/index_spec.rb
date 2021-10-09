feature 'Welcome page' do
  scenario 'Greeted with Rock, Paper, Scissors' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
