require './lib/game.rb'

describe Game do

  subject(:game){described_class.new(player, ai)}
  let(:player){double :player, selection: :rock}
  let(:ai){double :ai, selection: :paper}


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

  let(:player1) {double :player1, selection: :paper}
  let(:ai2) {double :ai2, selection: :rock}
  subject(:game2){described_class.new(player1, ai2)}

  describe '#winner' do

    it '-> calculates who won the game' do
      allow(player1).to receive(:name)
      expect(game2.winner).to eq player1.name
    end

    let(:player3) {double :player1, selection: :rock}
    let(:ai3) {double :ai2, selection: :rock}
    subject(:game3){described_class.new(player3, ai3)}

    it '-> shows if the game was drawn' do
      expect(game3.winner).to eq nil
    end
  end
end
