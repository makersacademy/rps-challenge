feature 'Testing landing page' do
  scenario 'Displays the game title' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end
end
