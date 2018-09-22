require './app/models/computer'

describe Computer do
  it { expect(described_class).to be < Player }

  it '@name is set to "Computer"' do
    expect(subject.name).to eq("Computer")
  end

  describe '#move=' do
    it 'sets move to #choice' do
      allow(subject).to receive(:choice).and_return(:rock)
      subject.move = ""
      expect(subject.move).to eq(:rock)
    end
  end
end
