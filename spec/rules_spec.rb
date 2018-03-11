require 'rules'

describe '#beats' do

  it 'rock beats scissors' do
    expect(Rules.beats[:rock]).to eq :scissors
  end

  it 'scissors beats paper' do
    expect(Rules.beats[:scissors]).to eq :paper
  end

  it 'paper beats rock' do
    expect(Rules.beats[:paper]).to eq :rock
  end
end
