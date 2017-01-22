require 'game'

describe Game do
  subject(:game){described_class.new}

  it 'should initialize with a rules hash' do
    expect(game.rules).to_not be_nil
  end

  describe '#winner' do
    it 'should work out who wins the game' do

    end
  end
end
