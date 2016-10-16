require 'game'

describe Game do

  let(:comp2  ) { double(:computer, :name => :comp, :move_choice => :rock )}
  let(:comp   ) { double(:computer, :name => :comp, :move_choice => :scissors )}
  let(:player1) { double(:player, :name => :fred, :player_choice => :rock )}
  let(:player2) { double(:player, :name => :fred, :player_choice => :paper )}
  let(:player3) { double(:player, :name => :fred, :player_choice => :scissors )}
  subject(:game) { described_class.new(:fred) }
  subject(:draw) { described_class.new(player1, comp2) }
  subject(:pwin) { described_class.new(player1, comp)}
  subject(:cwin) { described_class.new(player3, comp2)}

  describe '#initialize' do
    it 'takes a player as an argument' do
      expect(game.player).to eq :fred
    end
  end

  describe '#result' do
    it 'returns draw if player/computer choose the same' do
     allow(comp2).to receive(:computer_select).and_return(:rock)
     expect(draw.result?).to eq "Draw"
    end

    it 'returns you win if player wins' do
     allow(comp).to receive(:computer_select).and_return(:scissors)
     expect(pwin.result?).to eq "You win!"
    end

    it 'returns draw if player/computer choose the same' do
     allow(comp2).to receive(:computer_select).and_return(:scissors)
     expect(cwin.result?).to eq "Computer wins!"
    end
  end


end
