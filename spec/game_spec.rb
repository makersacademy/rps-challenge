require 'game'

describe Game do

  subject(:game_won) {described_class.new(player,"Scissors")}
  subject(:game_lost) {described_class.new(player,"Paper")}
  subject(:game_tie) {described_class.new(player,"Rock")}

  let(:player) { double :player, name: "Hassan", choice: "Rock"}

  describe '#match_winner' do
    it 'returns player as winner with rock vs scissors' do
      expect(game_won.result).to eq :won
    end

    it 'returns RPS-Bot as winner with rock vs paper' do
      expect(game_lost.result).to eq :lost
    end

    it 'returns message if match is a tie' do
      expect(game_tie.result).to eq :tie
    end
  end

end
