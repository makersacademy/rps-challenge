require 'game.rb'


describe 'Game' do
  let(:game) {Game.new("rock")}

  describe '#player_move' do
    it 'game can show player move' do
      expect(game.player_move).to eq("rock")
    end
  end

  # describe '#fight' do
  #   it 'game can pick a random weapon' do
  #     srand(0)
  #     game.fight
  #     expect(game.computer_move).to eq('scissors')
  #   end
  # end
  #
  # describe '#result' do
  #   it 'game can allow player to win' do
  #     game.attack("rock")
  #     srand(0)
  #     game.generate_move
  #     game.fight
  #     expect(game.result).to eq("You have won!")
  #   end
  #
  #   it 'game can draw' do
  #     game.attack("scissors")
  #     srand(0)
  #     game.generate_move
  #     game.fight
  #     expect(game.result).to eq("It's a draw!")
  #   end
  #
  #   it 'game can win' do
  #     game.attack("paper")
  #     srand(0)
  #     game.generate_move
  #     game.fight
  #     expect(game.result).to eq("You have lost")
  #   end
  # end

end
