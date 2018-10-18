require 'game'

describe Game do
  let(:game) { Game.new }
  let(:options) { ['rock', 'paper', 'scissors'] }

  it 'generates a returns rock' do
    allow(options).to receive(:sample).and_return('rock')
    expect(game.generate(options)).to eq 'rock'
  end

  it 'generates a returns paper' do
    allow(options).to receive(:sample).and_return('paper')
    expect(game.generate(options)).to eq 'paper'
  end

  it 'generates a returns scissors' do
    allow(options).to receive(:sample).and_return('scissors')
    expect(game.generate(options)).to eq 'scissors'
  end
end
