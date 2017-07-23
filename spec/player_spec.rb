describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { "Spock" }
  let(:selected_attack) { :paper }

  it 'has a name' do
    expect(player.name).to eq name
  end

  describe '#select_attack' do
    it 'selects an attack' do
      player.select_attack(selected_attack)
      expect(player.weapon).to eq selected_attack
    end
  end
end
