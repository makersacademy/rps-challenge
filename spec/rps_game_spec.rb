require 'rps_game'

describe RpsGame do
  subject(:game) { described_class.new(name) }
  let(:name) { double :name }
  let(:rock) { double :rock }

  it 'accepts rock, paper or scissors as an attack' do
    expect(game).to respond_to(:set_player_attack).with(1).argument
  end

  xdescribe '#determine_outcome' do
    it 'tells you when the player has won' do
      game.set_player_attack('paper')
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      expect(game.determine_outcome).to eq 'win'
    end

    it 'tells you when the player has lost' do
      game.set_player_attack('paper')
      allow_any_instance_of(Array).to receive(:sample).and_return('scissors')
      expect(game.determine_outcome).to eq 'lose'
    end

    it 'tells you when there\'s a draw' do
      game.set_player_attack('rock')
      allow_any_instance_of(Array).to receive(:sample).and_return('rock')
      expect(game.determine_outcome).to eq 'draw'
    end

  end

end