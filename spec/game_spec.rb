require 'game'

describe Game do
  
  let(:player) { double :player }
  let(:cpu_player) { double :cpu_player }
  subject(:game) { described_class.new(player,cpu_player)}

  describe 'initialization' do
    it {is_expected.to respond_to(:player)}
    it {is_expected.to respond_to(:current_player)}
  end

  describe '#rock' do
    it {is_expected.to respond_to(:rock)}

    it "sends a message 'rock' to the current player" do
      allow(player).to receive(:rock).and_return("LET'S ROCK")
      expect(game.rock).to eq "LET'S ROCK"
    end
  end

  describe '#paper' do
    it {is_expected.to respond_to(:paper)}

    it "sends a message 'paper' to the current player" do
      allow(player).to receive(:paper).and_return("LET'S ROLL")
      expect(game.paper).to eq "LET'S ROLL"
    end
  end

  describe '#scissors' do
    it {is_expected.to respond_to(:scissors)}

    it "sends a message 'scissors' to the current player" do
      allow(player).to receive(:scissors).and_return("CUT UP THINGS")
      expect(game.scissors).to eq "CUT UP THINGS"
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

  describe '#random_choice' do
    it 'makes a choice' do
      allow(Game::PLAY_OPTIONS).to receive(:sample).and_return('Rock')
      allow(player).to receive(:rock).and_return("ROCK")
      expect(game.random_choice).to eq "ROCK"
    end
  end

end