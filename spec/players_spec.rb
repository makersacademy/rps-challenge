require 'players'
describe Players do
  subject(:player1) { Players.new('Myra') }
  subject(:player2) { Players.new('Lara') }

  describe '#name' do
    it 'returns the names of the players' do
      expect(player1.name).to eq('Myra')
    end
  end

  # describe '#game_points' do
  #   it' returns the total points of the players' do
  #     expect(player1.total_points).to eq described_class::DEFAULT_HIT_POINTS
  #   end
  # end
end
