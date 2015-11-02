require 'game'

describe Game do
  
  let(:player) { double :player, name: 'Player 1' }
  let(:cpu_player) { double :cpu_player, name: 'Computer' }
  subject(:game) { described_class.new(player,cpu_player,1)}

  describe 'initialization' do
    it {is_expected.to respond_to(:player)}
    it {is_expected.to respond_to(:current_player)}
  end

  describe '#weapon' do
    it {is_expected.to respond_to(:weapon)}

    it "sends a message to the current player" do
      allow(player).to receive(:weapon).with(:scissors).and_return("CUT UP THINGS")
      expect(game.weapon(:scissors)).to eq "CUT UP THINGS"
    end
  end    

  describe '#random_choice' do
    it 'makes a choice' do
      allow(Game::PLAY_OPTIONS).to receive(:sample).and_return(:rock)
      allow(player).to receive(:weapon).with(:rock).and_return("ROCK")
      expect(game.random_choice).to eq "ROCK"
    end
  end

  describe '#switch_turns' do
    it {is_expected.to respond_to(:switch_turns)}
    
    it 'switches the current player' do
      game.switch_turns
      expect(game.current_player).to eq cpu_player
    end
  end

  describe '#opponent' do
    it {is_expected.to respond_to(:opponent)}
  
    it 'selects the opponent' do
      expect(game.opponent(player)).to eq cpu_player
    end
  end

  describe '#winner' do
    it {is_expected.to respond_to(:winner)}

    it 'returns the winning player' do
      allow(player).to receive(:hand).and_return(:paper)
      allow(cpu_player).to receive(:hand).and_return(:rock)
      expect(game.winner).to eq player.name
    end
  end

end