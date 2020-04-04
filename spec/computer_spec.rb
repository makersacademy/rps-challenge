describe Computer do
  let(:choice_class) { double(:choice) }
  let(:computer) { described_class.new(choice_class) }

  describe '#choose' do
    it 'can select rock' do
      allow(choice_class).to receive(:new).with(any_args).and_return(:Rock)
      computer.choose
      expect(computer.choice).to eq :Rock
    end

    it 'can select scissors' do
      allow(choice_class).to receive(:new).with(any_args).and_return(:Scissors)
      computer.choose
      expect(computer.choice).to eq :Scissors
    end

    it 'can select paper' do
      allow(choice_class).to receive(:new).with(any_args).and_return(:Paper)
      computer.choose
      expect(computer.choice).to eq :Paper
    end
  end
end
