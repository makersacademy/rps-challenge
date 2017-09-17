require 'game'

RSpec.describe Game do
  let(:options) { { 'name' => 'James', 'choice' => :rock, 'computer_choice' => :rock } }
  subject(:game) { described_class.new(options) }
  # let(:name) { 'James'}
  # let(:choice) { 'rock' }
  # let(:computer_choice) { 'rock' }

  describe '#name' do
    it 'calls the player name' do
      expect(game.name).to eq 'James'
    end
  end
  describe '#choice' do
    it 'calls the player choice' do
      expect(game.choice).to eq :rock
    end
  end
  describe '#computer_choice' do
    it 'calls the computer choice' do
      expect(game.computer_choice).to eq :rock
    end
  end

  describe '#win?' do
    it 'is true when player choice is paper and computer choice is rock' do
      expect(game.win?).to eq true
    end
    it 'is true when player choice is rock and computer choice is scissors' do
      expect(game.win?).to eq true
    end
    it 'is true when player choice is scissors and computer choice is paper' do
      expect(game.win?).to eq true
    end
    it 'is false when player choice is paper and computer choice is scissors' do
      expect(game.win?).to eq false
    end
    it "is false when player choice is rock and computer choice is paper" do
      expect(game.win?).to eq false
    end
    it "is false when player choice is scissors and computer choice is rock" do
      expect(game.win?).to eq false
    end
  end
end
