feature '' do
  xscenario 'Player chooses rock and computer chooses rock' do
    game = Game.new
    player = Player.new
    computer = Computer.new
    player.player_choice('rock')
    expect(computer).to_receive(computer_choice).and_return('rock')
    expect(game.compare(player.choice, computer.choice)).to eq("You've both drawn...")
  end
	
end