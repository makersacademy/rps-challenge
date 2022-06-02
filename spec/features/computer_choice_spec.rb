RSpec.describe 'computer choice' do
  feature 'computer player' do
    scenario 'shows the computer choice' do
      user = double :user, choice: 'scissors', name: 'Sandra'
      computer = double :computer, choice: 'rock', name: 'Computer'
      $game = Game.new(user, computer)
      visit '/result'
      expect(page).to have_content "Computer chose rock."
    end
  end
end
