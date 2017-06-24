require "computer"

describe Computer do
  it { is_expected.to be_a Computer }

  describe 'Initialization' do
    it "has a name" do
      expect(subject.name).to eq "the Computer"
    end
  end

  describe '#choose' do
    it { is_expected.to respond_to :choose }
    it 'picks a weapon at random' do
      expect(subject.choose).to eq(:rock).or(eq(:paper)).or(eq(:scissors))
    end
  end
end
