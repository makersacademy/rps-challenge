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

  describe 'Announces winner and allows user to play again' do
    before do
      sign_in_and_play
      click_button('rock')
    end
    scenario 'Announces a winner' do
      expect(page).to have_content 'The winner is...'
    end
    scenario 'User can play again' do
      click_button 'Click here to play again'
      expect(page).to have_content 'Please choose from the following options'
    end
  end
end
