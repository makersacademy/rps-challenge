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

  it 'should win against lizard' do
    expect(Rock.compare(Lizard)).to eq(:win)
  end

  it 'should lose against paper' do
    expect(Rock.compare(Paper)).to eq(:lose)
  end

  it 'should lose against spock' do
    expect(Rock.compare(Spock)).to eq(:lose)
  end
end

describe Scissors do

  it 'should draw to scissors' do
    expect(Scissors.compare(Scissors)).to eq(:draw)
  end

  it 'should win against paper' do
    expect(Scissors.compare(Paper)).to eq(:win)
  end

  it 'should win against lizard' do
    expect(Scissors.compare(Lizard)).to eq(:win)
  end

  it 'should lose against rock' do
    expect(Scissors.compare(Rock)).to eq(:lose)
  end

  it 'should lose against spock' do
    expect(Scissors.compare(Spock)).to eq(:lose)
  end
end

describe Paper do

  it 'should draw to paper' do
    expect(Paper.compare(Paper)).to eq(:draw)
  end

  it 'should win against rock' do
    expect(Paper.compare(Rock)).to eq(:win)
  end

  it 'should win against spock' do
    expect(Paper.compare(Spock)).to eq(:win)
  end

  it 'should lose against scissors' do
    expect(Paper.compare(Scissors)).to eq(:lose)
  end

  it 'should lose against lizard' do
    expect(Paper.compare(Lizard)).to eq(:lose)
  end
end

describe Spock do
  it 'should draw to Spock' do
    expect(Spock.compare(Spock)).to eq(:draw)
  end

  it 'should win against scissors' do
    expect(Spock.compare(Scissors)).to eq(:win)
  end

  it 'should win against rock' do
    expect(Spock.compare(Rock)).to eq(:win)
  end

  it 'should lose against lizard' do
    expect(Spock.compare(Lizard)).to eq(:lose)
  end

  it 'should lose against paper' do
    expect(Spock.compare(Paper)).to eq(:lose)
  end
end

describe Lizard do
  it 'should draw to Lizard' do
    expect(Lizard.compare(Lizard)).to eq(:draw)
  end

  it 'should win against paper' do
    expect(Lizard.compare(Paper)).to eq(:win)
  end

  it 'should win against spock' do
    expect(Lizard.compare(Spock)).to eq(:win)
  end

  it 'should lose against scissors' do
    expect(Lizard.compare(Scissors)).to eq(:lose)
  end

  it 'should lose against rock' do
    expect(Lizard.compare(Rock)).to eq(:lose)
  end
end