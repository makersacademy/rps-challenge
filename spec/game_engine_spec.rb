describe GameEngine do
  context 'Playing Rock Paper Scissors' do
  it "TIE - Player and CPU both choose rock." do
    game = GameEngine.new
    allow(game).to receive(cpu_choice).and_return(:rock)
    game.player_choice(:rock)
    expect(game.result).to eq(:TIE)

  end
  end
end

