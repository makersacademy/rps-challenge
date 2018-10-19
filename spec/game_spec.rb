require 'game'

describe Game do
  let(:game) { Game.new(options) }
  let(:options) { ['rock', 'paper', 'scissors'] }

  it 'generates a returns rock' do
    allow(options).to receive(:sample).and_return('rock')
    expect(game.move).to eq 'rock'
  end

  it 'generates a returns paper' do
    allow(options).to receive(:sample).and_return('paper')
    expect(game.move).to eq 'paper'
  end

  it 'generates a returns scissors' do
    allow(options).to receive(:sample).and_return('scissors')
    expect(game.move).to eq 'scissors'
  end
end
