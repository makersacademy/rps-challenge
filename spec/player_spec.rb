require 'player'
describe 'Player' do
  subject(:paula) { Player.new("Paula") }
  computer = Computer.new("Ogruk")
  let(:computer_score) { double :computer_score }

  describe '#score' do
    it 'expects a new player to have a default score of 0' do
      expect(paula.score).to eq 0
    end
  end

  describe '#attack_with_rock' do
    it 'expects player to respond to #attack_with_rock' do
      expect(paula).to respond_to(:attack_with_rock)
    end
  end

  describe '#attack_with_rock score' do
    it 'expects the player to win when computer plays scissors' do
      allow(Computer::WEAPONS).to receive_messages(sample: :scissors)
      expect{paula.attack_with_rock(computer)}.to change{paula.score}.by 1
    end
  end

  describe '#attack_with_paper' do
    it 'expects player to respond to #attack_with_paper' do
      expect(paula).to respond_to(:attack_with_paper).with(1).argument
    end
  end

  describe '#attack_with_paper' do
    it 'expects the player to win when the computer plays rock' do
      allow(Computer::WEAPONS).to receive_messages(sample: :rock)
      expect{paula.attack_with_paper(computer)}.to change{paula.score}.by 1
    end
  end

  describe '#attack_with_scissors' do
    it 'expects player to respond to #attack_with_scissors' do
      expect(paula).to respond_to(:attack_with_scissors).with(1).argument
    end
  end

  describe '#attack_with_scissors' do
    it 'expects player to win when computer plays paper' do
      allow(Computer::WEAPONS).to receive_messages(sample: :paper)
      expect{paula.attack_with_scissors(computer)}.to change{paula.score}.by 1
    end
  end
end
