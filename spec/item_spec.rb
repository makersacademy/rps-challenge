require 'item'

describe Item do

  let(:rock){Item.new('Rock', 0)}
  let(:scissors){Item.new('Scissors', 1)}
  
  it 'Rock beats Scissors' do
    expect(rock.beats(scissors)).to eq true
  end

end
