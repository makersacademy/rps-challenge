require 'item'

describe Item do

  let(:rock){ Item.rock }
  let(:scissors){ Item.scissors }
  let(:paper){ Item.paper }

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
