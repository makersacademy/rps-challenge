feature 'Rock, Paper, Scissors' do

  scenario 'First page' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors! Please enter your name'
  end

  describe 'Starting the game' do
    before do
      sign_in_and_play
    end
    scenario 'Entering your name' do
      expect(page).to have_content 'Welcome, George!'
    end
  end

  describe 'Choosing rock, paper or scissors' do
    before do
      sign_in_and_play
    end
    scenario 'User can choose' do
      click_button('rock')
      expect(page).to have_content 'You picked rock'
    end
  end

  describe 'Announces the outcome and allows user to play again' do
    before do
      sign_in_and_play
    end

    scenario 'Announces a winner (the player)' do
      srand(2)
      click_button('paper')
      expect(page).to have_content 'The winner is... George'
    end

    scenario 'Announces a winner (the computer)' do
      srand(1)
      click_button('paper')
      expect(page).to have_content 'The winner is... Computer'
    end

    scenario 'Announces a draw' do
      srand(5)
      click_button('paper')
      expect(page).to have_content 'The winner is... No one! It\'s a draw'
    end

    scenario 'User can play again' do
      click_button('paper')
      click_button 'Click here to play again'
      expect(page).to have_content 'Please choose from the following options'
    end
  end
end
