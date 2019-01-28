require 'weapon'

describe Weapon do

  it 'should implement compare' do
    expect(Weapon).to respond_to(:compare)
  end
end

describe Rock do

  it 'should implement compare' do
    expect(Weapon).to respond_to(:compare)
  end

  it 'should draw to rock' do
    expect(Rock.compare(Rock)).to eq(:draw)
  end

  it 'should win against scissors' do
    expect(Rock.compare(Scissors)).to eq(:win)
  end

  it 'should lose against paper' do
    expect(Rock.compare(Paper)).to eq(:lose)
  end
end

describe Scissors do

  it 'should draw to scissors' do
    expect(Scissors.compare(Scissors)).to eq(:draw)
  end

  it 'should win against paper' do
    expect(Scissors.compare(Paper)).to eq(:win)
  end

  it 'should lose against rock' do
    expect(Scissors.compare(Rock)).to eq(:lose)
  end
end

describe Paper do

  it 'should draw to paper' do
    expect(Paper.compare(Paper)).to eq(:draw)
  end

  it 'should win against rock' do
    expect(Paper.compare(Rock)).to eq(:win)
  end

  it 'should lose against scissors' do
    expect(Paper.compare(Scissors)).to eq(:lose)
  end
end
