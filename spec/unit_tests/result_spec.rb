require 'result'

describe Result do
  it { is_expected.to respond_to(:result).with(2).arguments }
  describe '#result' do
    it "it's a draw if user and computer choices are the same" do
      expect(subject.result('Rock','Rock')).to eq "It's a draw! 🤝"
    end

    it "user wins" do
      expect(subject.result('Rock','Scissors')).to eq "Yay! You have won! 👏🏼"
      expect(subject.result('Paper','Rock')).to eq "Yay! You have won! 👏🏼"
      expect(subject.result('Scissors','Paper')).to eq "Yay! You have won! 👏🏼"
    end

    it "user loses" do
      expect(subject.result('Scissors','Rock')).to eq "Pshh. Loser! 🙄"
      expect(subject.result('Rock','Paper')).to eq "Pshh. Loser! 🙄"
      expect(subject.result('Paper','Scissors')).to eq "Pshh. Loser! 🙄"
    end
  end
end
