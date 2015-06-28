require 'player'

describe Player do

  it {is_expected.to respond_to(:choose).with(1).argument }

  describe "choose" do
    it "sets choice to rock paper or scissors" do
      subject.choose :rock
      expect(subject.choice).to eq :rock
    end
  end



end
