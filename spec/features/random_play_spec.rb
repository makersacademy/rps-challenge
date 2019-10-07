require 'random_play'

describe Random_play do
  it { expect(Random_play).to respond_to(:play) }

  it 'returns a valid value' do
    1000.times do
      expect(Random_play.play).to eq('ROCK').or eq('PAPER').or eq('SCISSORS')
    end
  end
end
