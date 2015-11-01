require 'game'

describe Game do

  subject(:game) { described_class.new }

  it 'comes with a set list of weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
  end

  context 'the game has rules, rock beats scissors, scissors beats paper
  and paper beats rock' do

    it 'rock beats scissors' do
      expect(rock.beats?(scissors)).to eq true
    end

  end
end
