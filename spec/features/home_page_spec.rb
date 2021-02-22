feature 'home page' do
  scenario 'has title of game' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
  scenario 'player can sign in' do
    sign_in_and_play
    expect(page).to have_content("Hannah, let's play! Type rock, paper or scissors.")
  end

end
