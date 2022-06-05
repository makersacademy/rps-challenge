RSpec.describe 'results' do
  feature 'player 1 picks rock and player 2 chooses scissors' do
    scenario 'shows player 1 as the winner' do
      player1 = double :player, choice: 'rock', name: 'Sandra'
      player2 = double :player, choice: 'scissors', name: 'Sandy'
      $game = Game.new(player1, player2)
      visit '/result'
      expect(page).to have_content 'Sandra wins!'
    end
  end

  feature 'player 1 picks rock and player 2 picks paper' do
    scenario 'shows player 1 as the winner' do
      player1 = double :player, choice: 'rock', name: 'Sandra'
      player2 = double :player, choice: 'paper', name: 'Sandy'
      $game = Game.new(player1, player2)
      visit '/result'
      expect(page).to have_content 'Sandy wins!'
    end
  end

  feature 'both players pick paper' do
    scenario 'shows a draw' do
      player1 = double :player, choice: 'paper', name: 'Sandra'
      player2 = double :player, choice: 'paper', name: 'Sandy'
      $game = Game.new(player1, player2)
      visit '/result'
      expect(page).to have_content "It's a draw!"
    end
  end
end
