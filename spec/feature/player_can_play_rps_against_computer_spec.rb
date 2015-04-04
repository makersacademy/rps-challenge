feature 'player can play Rock, paper, scissors against the computer' do
  scenario 'player plays against the computer in the command line' do
    player = Player.new("Jade")
    round = Game.new(player)
    allow(round).to_receive(:computer_turn).and_return("scissors")
    computer_choice = round.computer_turn
    expect(round.play("rock")).to eq "Jade wins!"
  end
end
