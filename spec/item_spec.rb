require 'item'

describe Item do
  let(:rock){Item.new}
  let(:scissors){Item.new}
  it 'Rock beats Scissors' do
    expect(rock.beats(scissors)).to eq true
  end

end
