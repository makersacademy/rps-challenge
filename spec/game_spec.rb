require 'game'

describe Game do

  let(:shape1){double(:shape1, name: "Shape1")}
  let(:shape2){double(:shape2, name: "Shape2")}
  let(:player1){double(:player1,  :current_selection => shape1,
                                  :current_selection= => nil,
                                  :name => "Player1")}
  let(:player2){double(:player2,  :current_selection => shape2,
                                  :current_selection= => nil,
                                  :name => "Player2")}
  let(:game){ Game.new(player1, player2) }
  let(:player_no_selection){double(:player_no, current_selection: nil)}

  describe '#new' do

    it 'accepts two arguments when initializing' do
      expect{ Game.new(player1, player2) }.not_to raise_error
    end

    it 'has players 1 and 2 after initializing' do
      expect([game.player1, game.player2]).to eq [player1, player2]
    end

  end

  describe '#challenge' do

    it 'declares player1 the winner when they beat player2' do
      allow(shape1).to receive(:beats?) {true}
      allow(shape2).to receive(:beats?) {false}
      expect(game.challenge).to eq "Player1"
    end

    it 'declares player2 the winner when they beat player1' do
      allow(shape1).to receive(:beats?) {false}
      allow(shape2).to receive(:beats?) {true}
      expect(game.challenge).to eq "Player2"
    end

    it 'declares a draw when players have chosen the same type of object' do
      game = Game.new(player1, player1)
      allow(shape1).to receive(:beats?) {false}
      expect(game.challenge).to eq "Draw"
    end

    it 'raises an error if a player has not made a selection' do
      game = Game.new(player1, player_no_selection)
      expect{ game.challenge }.to raise_error "Both players must choose their weapon"
    end

  end

  it 'can reset the player options' do
    expect(game).to respond_to(:reset_player_options)
  end

end