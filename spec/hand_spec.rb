require 'hand'

describe Hand do
subject(:spock) { described_class.new('spock', scissors.name, rock.name)}
let(:scissors) { double :scissors, :name => 'scissors' }
let(:rock) { double :rock, :name => 'rock' }

describe '#name' do
  it 'returns the name of the hand' do
    expect(spock.name).to eq 'spock'
  end
end

describe '#better' do
  it 'returns true if the hand is better' do
    expect(spock.better?(scissors)).to eq true
  end
end



end
