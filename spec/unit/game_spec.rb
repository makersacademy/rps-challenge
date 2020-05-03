require './lib/game'
describe Game do
    subject(:game) {described_class.new(player1, player2)}
    let(:player1) {double :player1}
    let(:player2) {double :player2}
    
    it 'rock beats scissor' do
        allow(player1).to receive(:status).and_return 'rock'
        allow(player1).to receive(:status).and_return 'scissor'
        expect(game.result).to eq true
    end
end