require 'AI'

describe AI do
  subject(:computer) { described_class.new }

  it 'can choose Rock as its weapon' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(computer.weapon_choice).to eq 'rock'
  end

  it 'can choose Paper as its weapon' do
    allow(Kernel).to receive(:rand) { 1 }
    expect(computer.weapon_choice).to eq 'paper'
  end

  it 'can choose Scissors as its weapon' do
    allow(Kernel).to receive(:rand) { 2 }
    expect(computer.weapon_choice).to eq 'scissors'
  end

  it 'returns its weapon choice' do
    #allow(computer).to receive(:weapon) { 'rock' }
    expect(computer).to respond_to(:weapon_choice)
  end
end