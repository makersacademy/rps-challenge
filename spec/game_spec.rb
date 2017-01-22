require './lib/game.rb'

describe Game do
  let(:player) {double :player}
  let(:computer) {double :computer}
  subject(:game) {described_class.new(player, computer)}

before do
  allow(player).to receive(:add_win)
  allow(computer).to receive(:add_win)
end

  describe '#Initialization' do
    it 'retrieves the first player' do
      expect(game.player).to eq player
    end

    it 'initializes with an instance of Computer' do
      expect(game.computer).to eq computer
    end

    it 'initializes with weapons of :rock, :paper and :scissors' do
      expect(Game::WEAPONS).to eq([:rock, :paper, :scissors])
    end
  end

  describe '#Choosing Weapons' do
    it 'sets the player weapon as one of the WEAPONS in game class' do
      game.player_choice(:rock)
      expect([:rock, :paper, :scissors]).to include(game.player_weapon)
    end

    it 'sets the computer weapon as a random instance of WEAPON' do
      allow(computer).to receive(:random_choice).and_return(:rock)
      game.computer_choice
      expect(game.computer_weapon).to eq(:rock)
  end
end

  describe '#Class Methods' do
    it 'creates a new game within a variable called game' do
      expect(Game.create(player)).to be_an_instance_of(Game)
    end

    it 'displays the instance of the class instance method' do
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  describe '#Results' do
    context 'Player wins' do
      it 'returns win if player is Rock and computer is Scissors' do
        allow(computer).to receive(:random_choice).and_return(:scissors)
        game.player_choice(:rock)
        game.computer_choice
        expect(game.result).to eq(:win)
      end

      it 'returns win if player is Paper and computer is Rock' do
        allow(computer).to receive(:random_choice).and_return(:rock)
        game.player_choice(:paper)
        game.computer_choice
        expect(game.result).to eq(:win)
      end

      it 'returns win if player is Scissors and computer is Paper' do
        allow(computer).to receive(:random_choice).and_return(:paper)
        game.player_choice(:scissors)
        game.computer_choice
        expect(game.result).to eq(:win)
      end
    end

    context 'Player draws' do
      it 'returns draw if player is Rock and computer is Rock' do
        allow(computer).to receive(:random_choice).and_return(:rock)
        game.player_choice(:rock)
        game.computer_choice
        expect(game.result).to eq(:draw)
      end

      it 'returns draw if player is Paper and computer is Paper' do
        allow(computer).to receive(:random_choice).and_return(:paper)
        game.player_choice(:paper)
        game.computer_choice
        expect(game.result).to eq(:draw)
      end

      it 'returns draw if player is Scissors and computer is Scissors' do
        allow(computer).to receive(:random_choice).and_return(:scissors)
        game.player_choice(:scissors)
        game.computer_choice
        expect(game.result).to eq(:draw)
      end
    end

    context 'Player loses' do
      it 'returns lose if player is Scissors and computer is Rock' do
        allow(computer).to receive(:random_choice).and_return(:rock)
        game.player_choice(:scissors)
        game.computer_choice
        expect(game.result).to eq(:lose)
      end

      it 'returns lose if player is Rock and computer is Paper' do
        allow(computer).to receive(:random_choice).and_return(:paper)
        game.player_choice(:rock)
        game.computer_choice
        expect(game.result).to eq(:lose)
      end

      it 'returns lose if player is Paper and computer is Scissors' do
        allow(computer).to receive(:random_choice).and_return(:scissors)
        game.player_choice(:paper)
        game.computer_choice
        expect(game.result).to eq(:lose)
      end
    end
  end
end
