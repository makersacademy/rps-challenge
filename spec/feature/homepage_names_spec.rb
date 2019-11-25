feature 'Testing the homepage name form and redirect' do

  scenario 'Displays the title' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end

  scenario 'Displays the name on a new page' do
    sign_in_and_play
    expect(page).to have_content 'Player 1 is Jo'
  end
end
