require "game"

describe Game do
  subject { Game.new("Emile", "Rock")}
  it 'allows computer to make random selection' do
    rps_array = ["Rock", "Paper", "Scissors"]
    expect(rps_array).to include subject.computer
  end
end