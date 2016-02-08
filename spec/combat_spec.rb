require 'Combat'

describe Combat do
  subject(:match) { described_class.new }

  it 'resolves Rock vs Rock' do
    expect(match.resolve('rock', 'rock')).to eq 'Rock ties with rock!'
  end

  it 'resolves Rock vs Paper' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('rock', 'paper')).to eq 'Rock loses to paper!'
  end

  it 'resolves Rock vs Scissors' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('rock', 'scissors')).to eq 'Rock beats scissors!'
  end

  it 'resolves Paper vs Rock' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('paper', 'rock')).to eq 'Paper beats rock!'
  end

  it 'resolves Paper vs Paper' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('paper', 'paper')).to eq 'Paper ties with paper!'
  end

  it 'resolves Paper vs Scissors' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('paper', 'scissors')).to eq 'Paper loses to scissors!'
  end

  it 'resolves Scissors vs Rock' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('scissors', 'rock')).to eq 'Scissors loses to rock!'
  end

  it 'resolves Scissors vs Paper' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('scissors', 'paper')).to eq 'Scissors beats paper!'
  end

  it 'resolves Scissors vs Scissors' do
    allow(Kernel).to receive(:rand) { 0 }
    expect(match.resolve('scissors', 'scissors')).to eq 'Scissors ties with scissors!'
  end

  # it 'returns its weapon choice' do
  #   #allow(computer).to receive(:weapon) { 'rock' }
  #   expect(computer).to respond_to(:weapon_choice)
  # end
end