require 'game'

describe Game do
  subject(:game) { described_class.new(player, computer) }

  let(:player) { double('Player', :name => 'Mannie') }
  let(:computer) { double('Computer', :select_random => 'paper2') }
  let(:hands) { double('Hands') }


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
    it 'returns true if playing a computer' do
      game_2 = Game.new(player)
      expect(game_2.playing_computer?).to be_truthy
    end

    it 'delegates to computer to select a hand' do
      allow(computer).to receive(:is_a?).with(Computer) { true }
      expect(computer).to receive(:hand)
      game.player_1_select('rock')
    end
  end

end
