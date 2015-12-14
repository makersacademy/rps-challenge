require 'game'


describe Game do
  subject(:game) {described_class.new(david, weapon, computer)}
  let(:david) {double :player, name: :David}
  let(:weapon) {double :weapon}
  let(:computer) {double :computer}

  before do
    game.p1_choice(:rock)
    allow(computer).to receive(:random_option) {:paper}
    game.computer_choice
  end

  describe '#player_name_1' do
    it "Displays player's name" do
      expect(game.player_name_1).to eq :David
    end
  end

  describe '#p1_choice' do
    it 'stores player 1 selection' do
      expect(game.p1_selection).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'gives a computer random choice' do
      expect(game.pc_selection).to eq :paper
    end
  end

  describe 'result' do
    it 'displays result after selection' do
      allow(weapon).to receive(:judge).with(:rock, :paper) {:Lost}
      expect(game.result).to eq :Lost
    end
  end
end
