describe Player do
  let(:chooser_class) { double(:chooser) }
  let(:player) { described_class.new("Bob", chooser_class) }

  describe '#name' do
    it 'can be read' do
      expect(player.name).to eq "Bob"
    end
  end

  describe '#choose' do
    it 'can make a selection' do
      expect(chooser_class).to receive(:new).with(:Rock)
      player.choose(:Rock)
    end
  end
end
