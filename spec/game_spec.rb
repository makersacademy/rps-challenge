require 'game'

describe "Game" do

  let(:rock) { Game.new("Rock") }

  it "recognises the player's choice" do
    expect(rock.character).to eq("Rock")
  end

  it "chooses an opponent randomly" do
    opponent_test =[]
    game = Game.new("Rock")
    100.times do
      game.enemy
      opponent_test.push(game.opponent)
    end
    expect(opponent_test).to include("Rock")
    expect(opponent_test).to include("Paper")
    expect(opponent_test).to include("Scissors")
  end

  # it "asseses victory conditions for Rock v Paper" do
  #    allow(rock).to receive(:opponent) { "Paper" }
  #    rock.battle
  #    expect(rock.result).to eq("Paper covers Rock. You lose!")
  # end


end
