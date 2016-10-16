require 'spec_helper'

describe Player do

  let(:game) { Game.new(player1, player2) }
  let(:player1) { Player.new('Ali') }
  let(:player2) { Player.new('Chet') }

  it "takes in a player name and stores it in the class" do
    player = Player.new('Ali')
    expect(player.name).to eq 'Ali'
  end

  

end
