require 'game'

describe Game do
  subject(:game) { described_class.new(attributes) }
  let(:attributes) { { 'name' => 'Jonny', 'choice' => :rock } }

  describe '#name' do
    it 'returns player name' do
      expect(game.name).to eq 'Jonny'
    end
  end

  describe '#choice' do
    it 'returns player choice' do
      expect(game.choice).to eq :rock
    end
  end

  describe '#computer_choice' do
    it 'returns computer choice' do
      expect([:rock, :paper, :scissors]).to include game.computer_choice
    end
  end

  # describe '#computer_choice' do
  #   it 'generates a random choice for the computer' do
  #     expect([:rock, :paper, :scissors]).to include game.computer_choice
  #   end
  # end

end