require 'game'

describe Game do
  let(:game) { described_class.new('Ed') }

  it 'should return stored player' do
    expect(game.player1.name).to eq('Ed')
  end

  it 'should auto-generate a computer opponent for single players' do
    expect(game.player2.name).to eq('RPS-Bot')
  end
end

