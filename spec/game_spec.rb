require 'game'

describe Game do
  let(:player){double :player}
  subject(:game){described_class.new(player)}

  context '#initialize' do
    it 'creates a new player' do
      expect(game.player).to eq player
    end
  end

  context '#choice selection' do
    it 'selects rock' do
      game.rock
      expect(game.selection).to eq :rock
    end

    it 'selects paper' do
      game.paper
      expect(game.selection).to eq :paper
    end

    it 'selects rock' do
      game.scissors
      expect(game.selection).to eq :scissors
    end
  end

  context '#computer' do
    it 'computer makes a selection' do
      allow(Game::CHOICE).to receive(:sample).and_return(:rock)
      game.computer
      expect(game.computer_selection).to eq :rock
    end
  end

end
