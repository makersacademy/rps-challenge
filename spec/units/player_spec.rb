describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { "Spock" }
  let(:selected_attack) { :paper }
  let(:score_increment) { 1 }

  it 'has a name' do
    expect(player.name).to eq name
  end

  describe '#add_win' do
    it 'adds to personal score when round was won' do
      expect{player.add_win}.to change{player.score}.by score_increment
    end
  end

  describe '#select_attack' do
    it 'selects an attack' do
      player.select_attack(selected_attack)
      expect(player.weapon).to eq selected_attack
    end
  end
end
