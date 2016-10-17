require 'views/player'


  describe Player do
    subject(:player1) {described_class.new('Dibbles')}
    subject(:player2) {described_class.new('Spicy Boy')}


  context '#name' do
    it 'returns the name of the player as set' do
      expect(player1.name).to eq 'Dibbles'
    end
  end

  context '#selection' do
    it 'selects either rock, paper or scissors' do
      allow(player1).to receive(:select_weapon).and_return('rock')
      expect(player1.select_weapon).to eq 'rock'
    end
  end

  # context 'declares a winner' do
  #   it 'sets the winning party as a winner' do
  #     expect(player1.winner?).to be true
  #   end
  # end

  # context 'It keeps tally on score' do
  #   it 'keeps tally' do
  #   player1.select_weapon(rock)
  #
  #   expect(player1.tally).to eq 1
  #   end
  # end

end
