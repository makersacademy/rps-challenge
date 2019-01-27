feature 'Welcome Page' do
  scenario 'Has a welcome message when the index page is loaded' do
    visit ('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end

  scenario 'Can select a 1 player game which will redirect to a 1 player log in page' do
    play_one_player
    expect(page).to have_content 'Please enter your name below:'
  end

  scenario 'Can select a 2 player game which will redirect to a 1 player log in page' do
    play_two_player
    expect(page).to have_content 'Please enter your names below:'
  end
end
