require 'player'
describe 'Player' do
  subject(:paula) { Player.new("Paula")}
  let(:computer) { double :computer }


  describe '#score' do
    it 'expects a new player to have a default score of 0' do
      expect(paula.score).to eq 0
    end
  end

  describe '#attack_with_rock' do
    it 'expects player to respond to #attack_with_rock' do
      expect(paula).to respond_to(:attack_with_rock).with(1).argument
    end
  end

  describe '#attack_with_rock score' do
    it 'expects the player to win when computer plays scissors' do
      expect{paula.attack_with_rock(computer)}.to change{paula.score}.by 1
    end
  end

  # describe '#attack_with_paper' do
  #   it 'expects player to respond to #attack_with_paper' do
  #     expect(paula).to respond_to(:attack_with_paper).with(1).argument
  #   end
  # end
end
