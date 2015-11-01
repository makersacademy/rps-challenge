feature 'Rock, Paper, Scissors' do

  scenario 'First page' do
    visit ('/')
    expect(page).to have_content('Welcome to Rock, Paper, Scissors! Please enter your name')
  end

  describe 'Starting the game' do
    before do
      sign_in_and_play
    end
    scenario 'Entering your name' do
      expect(page).to have_content('Welcome, George!')
    end
  end
end
