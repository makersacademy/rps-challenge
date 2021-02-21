feature 'home page' do
  scenario 'has title of game' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
  scenario 'player can sign in' do
    visit('/')
    fill_in :name, with: 'Hannah'
    click_button "Submit"
    expect(page).to have_content("Hannah, let's play! Type rock, paper or scissors.")
  end

end
