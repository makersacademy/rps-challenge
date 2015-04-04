require 'spec_helper'

feature 'play game of Rock-Paper-Scissors' do
  # let(:gamemaster) { GameMaster.new }
  # let(:player1) { Player.new('James') }
  # computer = double :computer, name: 'R1D1', choice: :paper

  scenario 'player plays the game against computer' do
    g = GameMaster.new
    p1 = Player.new('Alan')
    p2 = Player.new('Homer')
    p1.join(g)
    p2.join(g)
    p1.choose :rock
    p2.choose :scissors
    expect(g.winner).to eq 'Alan'
    p1.quit
    p2.quit
  end
end
