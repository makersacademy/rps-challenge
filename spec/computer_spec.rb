require 'computer'

describe Computer do

  describe '#random_choice' do
    it "returns the computer's random selection" do
      allow(subject).to receive(:choice).and_return(:rock)
      expect(subject.choice).to eq :rock
    end
  end
end
