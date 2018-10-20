require 'computer'

describe Computer do
  let(:game) { Computer.new(options) }
  let(:options) { ['rock', 'paper', 'scissors'] }

  it 'returns rock' do
    allow(options).to receive(:sample).and_return('rock')
    expect(game.move2).to eq 'rock'
  end

  it 'returns paper' do
    allow(options).to receive(:sample).and_return('paper')
    expect(game.move2).to eq 'paper'
  end

  it 'returns scissors' do
    allow(options).to receive(:sample).and_return('scissors')
    expect(game.move2).to eq 'scissors'
  end
end
