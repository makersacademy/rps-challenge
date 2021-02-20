feature 'home page' do
  scenario 'has title of game' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

# expect to see name entry form

end
