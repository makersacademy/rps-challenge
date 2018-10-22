require 'config.rb'

describe Config do

  subject(:config) { described_class.new("Hard", "2") }

  it 'saves the game mode' do
    expect(config.mode).to eq "Hard"
  end
  it 'saves the players' do
    expect(config.players).to eq "2"
  end
  it 'determines the options' do
    expect(config.options).to eq [:rock, :paper, :scissors, :lizard, :spock]
  end
  it 'determines the winning options' do
    expect(config.wins).to eq Config::WINS
  end
end
