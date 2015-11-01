feature '/' do
  scenario 'displays the welcome message' do
    visit '/'
    expect(page).to have_content 'Welcome to Rock Paper Scissors'
  end
  scenario 'Allows the user to enter their name' do
    enter_name_and_play
    expect(page).to have_content 'Let\'s play, playerX goes first!'
  end
end
