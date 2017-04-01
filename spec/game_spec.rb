require 'game'

describe Game do
  subject(:game) { described_class.new(user, computer)}
  let(:user) { double(:user) }
  let(:computer) { double(:computer) }

  it 'returns player1' do
    expect(game.player1).to eq user
  end

  it 'retusn player2' do
    expect(game.player2).to eq computer
  end

  it 'has a hash of winnig choices' do
    expect(game.win_map).to be_instance_of Hash
  end
end
