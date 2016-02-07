require './lib/game.rb'

describe Game do

  subject(:game){described_class.new(player)}
  let(:player){double :player, selection: :scissors}
  let(:ai){double :ai, selection: :rock}

  describe '#initialize' do
    it '-> starts the game with two players' do
      expect(game.player).to eq player
    end
  end

  describe '#ai_chooses' do
    it '-> lets the AI choose a random weapon' do
      allow(game).to receive(:ai_chooses){"scissors"}
      expect(game.ai_chooses).to eq "scissors"
    end
  end

  describe '#winner' do
    it '-> calculates who won the game' do
      expect(game.winner).to eq player
    end
  end 
end
