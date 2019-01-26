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

desc