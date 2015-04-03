require 'rps_engine'

describe RpsGame do
  let(:game) {described_class.new} 
  # let(:moves) {[:rock, :paper, :scissors]}

  context 'taking input' do

    it 'raises an error if input move is incorrect' do
      expect{game.compare :not_a_move, :rock}.to raise_error 'not a valid move'
      expect{game.compare :paper, :not_a_move}.to raise_error 'not a valid move'
    end

  end

  context 'given two moves' do

    it 'can find the winner' do
      #USE BETTER LOGIC CHECK, this one is trivial
      # game.p1_go :rock
      # allow(game).to receice(:computer_go).and_return(:paper)
      game.compare :rock, :paper
      expect(game.winner).to eq :player_2 => :paper 
    end

    it 'can declare a draw' do
      game.compare :rock, :rock
      expect(game.winner).to eq :draw => :rock
    end
  
  end


end