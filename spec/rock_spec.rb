require 'rock'

describe Rock do

  let(:rock){Rock.new}
  let(:scissors){class Scissors; Scissors.new; end}
  let(:paper){class Paper; Paper.new; end}

  it 'beats scissors' do
    expect(rock.beats?(scissors)).to be true
  end

  it 'loses to paper' do
    expect(rock.beats?(paper)).not_to be true
  end

end
