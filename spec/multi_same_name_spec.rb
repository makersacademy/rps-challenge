require 'game'

describe Game do

  it "alters second name if the same name is entered" do
    player_1 = double :player, name: "Rosie"
    player_2 = double :player, name: "Rosie"
    allow(player_2).to receive(:name=).with("Rosie 2")   
    allow(player_2).to receive(:name).and_return("Rosie 2")
    game = Game.new(player_1, player_2)
    expect(game.player_1.name).to eq "Rosie"
    expect(game.player_2.name).to eq "Rosie 2"
  end
end