require 'player'

describe Player do

  describe 'choose' do

    it { is_expected.to respond_to(:choose).with(1).arguments}

    it 'returns the chosen weapon if the player makes a valid choice' do
      expect(subject.choose('rock')).to eq 'rock'
    end

    it 'raises an error message if you choose something other than rock, paper or scissors' do
      expect{subject.choose('banana')}.to raise_error 'Please choose either rock, paper or scissors'
    end

  end
end