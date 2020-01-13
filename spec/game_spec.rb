require 'game'

describe Game do
  subject(:game) { described_class.new(features) }
  let(:features) { {"name" => 'Ria', 'player_move' =>:rock, "random_move" => :paper} }


  describe '#name' do
    it 'has a name' do
      expect(game.name).to eq 'Ria'
    end
  end

  describe '#choices' do
    it 'returns players choice' do
      expect(game.player_move).to eq :rock
    end

    it 'returns comp choice' do
      expect(game.random_move).to eq :paper
    end
  end

  # describe '#winner' do
  #   it 'returns player win' do
  #     expect(game.win?).to eq true
  #   end
  # end
end

