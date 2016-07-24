require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer, hands) }

  let(:player) { double('Player', :name => 'Mannie') }
  let(:computer) { double('Computer', :hand => 'paper') }
  let(:hands) { double('Hands', :show => [:rock, :paper, :scissors]) }

  it 'creates an instance of self' do
    Game.create(player, computer)
    expect(Game.instance).to be_kind_of(Game)
  end

  it 'player 1 can be passed to the game object' do
    expect(game.player_1.name).to eq 'Mannie'
  end

  it 'lets player 1 select a hand' do
    expect{ game.player_1_select('rock') }.to change{ game.player_1_selection }
  end

  it 'returns nil if no hand selected by player 1' do
    expect(game.player_1_selection).to eq nil
  end

  context 'When playing a computer' do
    before do
      allow(computer).to receive(:is_a?).with(Computer) { true }
    end
    it 'returns true if playing a computer' do
      game_2 = Game.new(player)
      expect(game_2.playing_computer?).to be_truthy
    end

    it 'delegates to computer to select a hand' do
      expect(computer).to receive(:hand)
      game.player_1_select('rock')
    end

    it 'selects a winner based on selections' do
      allow(hands).to receive(:player_1_win?) { true }
      game.player_1_select('scissors')
      expect(game.the_winner).to eq :won
    end

    it 'returns lost' do
      allow(hands).to receive(:player_1_win?) { false }
      game.player_1_select('rock')
      expect(game.the_winner).to eq :lost
    end

    it 'returns a draw' do
      allow(game).to receive(:draw?) { true }
      game.player_1_select('rock')
      expect(game.the_winner).to eq :draw
    end
  end

end
