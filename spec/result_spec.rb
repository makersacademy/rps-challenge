require './lib/result'

describe Result do

  subject(:game1) { Result.new('Scissors', 'Rock', 'Rich') }
  subject(:game2) { Result.new('Paper', 'Scissors', 'Rich') }
  subject(:game3) { Result.new('Rock', 'Paper', 'Rich') }
  subject(:game4) { Result.new('Rock', 'Rock', 'Rich') }
  subject(:game5) { Result.new('Rock', 'Scissors', 'Rich') }

  it 'creates a new instance of result' do
    expect(subject).to be_instance_of Result
  end

  it 'rock beats scissors' do
    expect(game1.run_game).to eq "Rich Wins! - Rock beats Scissors!"
  end

  it 'scissors beats paper' do
    expect(game2.run_game).to eq "Rich Wins! - Scissors beats Paper!"
  end

  it 'paper beats rock' do
    expect(game3.run_game).to eq "Rich Wins! - Paper beats Rock!"
  end

  it 'draw' do
    expect(game4.run_game).to eq "It's a Draw!"
  end

  it 'loss' do
    expect(game5.run_game).to eq "Sorry Rich, You Lost"
  end
end
