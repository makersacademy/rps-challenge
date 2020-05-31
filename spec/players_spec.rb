require './lib/players'

describe Players do

  let(:player_name) { double :player_name }
  let(:player_move) { double :player_move }
  subject { described_class.new(player_name) }

  it 'player has a name a name' do
    expect(subject.player_name).to eq player_name
  end

  it 'player can choose a move' do
    expect(subject.player_choose_move(player_move)).to eq player_move
  end

  describe '#generate_computer_move' do
    it 'generates a random move' do
      random_move = ["Rock", "Paper", "Scissors"]
      expect(random_move).to include(subject.generate_computer_move)
    end
  end
end