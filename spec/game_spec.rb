require 'game.rb'

describe Game do
  let(:player1) { double(:player1, name: "John", choice: :rock) }
  let(:player2) { double(:player2, name: "Dave", choice: :scissors)}
  subject { Game.new(player1, player2) }
  it 'is initialized with two players' do
    expect(subject.player1).to eq(player1)
    expect(subject.player2).to eq(player2)
  end

  describe '#retrieve_winner' do
    it 'returns the winner the result of a game ' do
      expect(subject.retrieve_winner(player1, player2)).to eql(player1)
    end  
  end
end