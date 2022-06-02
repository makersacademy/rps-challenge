RSpec.describe 'results' do
  feature 'it shows the user as the winner' do
    scenario 'the user picks rock and computer chooses scissors' do
      user = double :user, choice: 'rock', name: 'Sandra'
      computer = double :computer, choice: 'scissors', name: 'Computer'
      $game = Game.new(user, computer)
      visit '/result'
      expect(page).to have_content 'You win!'
    end
  end
end
