require 'game.rb'

describe Game do
  let(:player1) { double(:player1, name: "John", choice: "rock") }
  let(:player2) { double(:player2, name: "Dave", choice: "paper")}
  let(:player3) { double(:player2, name: "Dave", choice: "scissors")}
  let(:player4) { double(:player2, name: "Dave", choice: "lizard")}
  let(:player5) { double(:player2, name: "Dave", choice: "spock")}
  subject { Game.new(player1, player2) }
  it 'is initialized with two players' do
    expect(subject.player1).to eq(player1)
    expect(subject.player2).to eq(player2)
  end

  describe '#retrieve_winner' do
    it 'returns the winner the result of rock vs paper ' do
      subject.retrieve_winner(player1, player2)
      expect(subject.winner).to eql(player2.name)
    end  
    it 'returns the winner for rock vs scissors' do
      subject.retrieve_winner(player1, player3)
      expect(subject.winner).to eql(player1.name)
    end
    it 'returns the winner for rock vs lizard' do
      subject.retrieve_winner(player1, player4)
      expect(subject.winner).to eql(player1.name)
      
    end
    it 'returns the winner for rock vs spock' do
      subject.retrieve_winner(player1, player5)
      expect(subject.winner).to eql(player5.name)
    end
    it 'returns nil when a draw' do
      subject.retrieve_winner(player1, player1)
      expect(subject.winner).to eql(nil)
    end
  end
end