require 'Combat'

describe Combat do
  subject(:match) { described_class.new }

  it 'resolves Rock vs Rock' do
    expect(match.resolve('rock', 'rock')).to eq 'Rock ties with rock!'
  end

  it 'resolves Rock vs Paper' do
    expect(match.resolve('rock', 'paper')).to eq 'Rock loses to paper!'
  end

  it 'resolves Rock vs Scissors' do
    expect(match.resolve('rock', 'scissors')).to eq 'Rock beats scissors!'
  end

  it 'resolves Paper vs Rock' do
    expect(match.resolve('paper', 'rock')).to eq 'Paper beats rock!'
  end

  it 'resolves Paper vs Paper' do
    expect(match.resolve('paper', 'paper')).to eq 'Paper ties with paper!'
  end

  it 'resolves Paper vs Scissors' do
    expect(match.resolve('paper', 'scissors')).to eq 'Paper loses to scissors!'
  end

  it 'resolves Scissors vs Rock' do
    expect(match.resolve('scissors', 'rock')).to eq 'Scissors loses to rock!'
  end

  it 'resolves Scissors vs Paper' do
    expect(match.resolve('scissors', 'paper')).to eq 'Scissors beats paper!'
  end

  it 'resolves Scissors vs Scissors' do
    expect(match.resolve('scissors', 'scissors')).to eq 'Scissors ties with scissors!'
  end

  it 'stores the winning weapon' do
    match.resolve('rock', 'paper')
    expect(match.winning_weapon).to eq 'paper'
  end
end