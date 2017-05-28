require 'item'

describe Item do

  let(:rock){Item.new('Rock', 0)}
  let(:scissors){Item.new('Scissors', 1)}
  let(:paper){Item.new('Paper', 2)}

  it 'Rock beats Scissors' do
    expect(rock.beats(scissors)).to eq true
  end

  it 'Scissors beats Paper' do
    expect(scissors.beats(paper)).to eq true
  end

  it 'Paper beats Rock' do
    expect(paper.beats(rock)).to eq true
  end

end
