require 'game'

describe Game do
  subject(:game) {described_class.new(player1, player2)}
  let(:player1) {double(:player)}
  let(:player2) {double(:player)}

  it 'initializes with weapons' do
    expect(Game::WEAPONS).to eq [:rock, :paper, :scissors]
  end

  it 'initializes with players' do
    expect(game.player1).to eq player1
    expect(game.player2).to eq player2
  end

  context 'winning situations' do
    it 'declares win if player1 chooses rock and player2 chooses scissors' do
    allow(player1).to receive(:choice) { :rock }
    allow(player2).to receive(:choice) { :scissors }
    expect(game.result).to eq :win
  end

    it 'declares win if player1 chooses paper and player2 chooses rock' do
    allow(player1).to receive(:choice) { :paper }
    allow(player2).to receive(:choice) { :rock }
    expect(game.result).to eq :win
  end

    it 'declares win if player1 chooses scissors and player2 chooses paper' do
    allow(player1).to receive(:choice) { :scissors}
    allow(player2).to receive(:choice) { :paper}
    expect(game.result).to eq :win
  end
end
    context 'losing situations' do
      it 'declares lose if player1 chooses rock and player2 chooses paper' do
      allow(player1).to receive(:choice) { :rock }
      allow(player2).to receive(:choice) { :paper }
      expect(game.result).to eq :lose
    end

     it 'declares lose if player1 chooses paper and player2 chooses scissors' do
     allow(player1).to receive(:choice) { :paper }
     allow(player2).to receive(:choice) { :scissors }
     expect(game.result).to eq :lose
     end

     it 'declares lose if player1 chooses scissors and player2 rock ' do
     allow(player1).to receive(:choice) { :scissors }
     allow(player2).to receive(:choice) { :rock }
     expect(game.result).to eq :lose
     end
    end

    context 'drawing situations' do
      it 'declares draw if player1 chooses the same weapon as player2 ' do
      allow(player1).to receive(:choice) { :scissors }
      allow(player2).to receive(:choice) { :scissors }
      expect(game.result).to eq :draw
      end
    end
end
