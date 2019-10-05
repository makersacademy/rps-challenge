feature 'Homepage format' do

  scenario 'Homepage has title' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors'
    expect(page).to have_content 'Player Name'
  end

end
