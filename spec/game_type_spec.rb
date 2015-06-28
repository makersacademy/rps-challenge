require 'game_type'

describe GameType do 

  it 'initalizes with a hash containing the game specifications' do
    expect(subject.rpssl).to be_instance_of Hash
  end

  context 'winner' do

    it 'returns the winner of two choices(1)' do

      expect(subject.winner?(:rock, :paper)).to eq :paper
    end

    it 'returns the winner of two choices(2)' do

      expect(subject.winner?(:rock, :lizard)).to eq :rock
    end

    it 'returns a draw if the choices are the same' do

      expect(subject.winner?(:rock, :rock)).to eq :draw
    end
  end
end