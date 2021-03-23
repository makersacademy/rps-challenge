require 'game'

describe Game do
  let(:player) { double(:player, name: "lastgreedymosquito") }
  let(:computer) { double(:player, name: "Computer") }
  let(:game) { Game.new(player, computer) }

  it 'returns player' do
    expect(game.player1).to eq player
  end

  it 'returns computer' do
    expect(game.player2).to eq computer
  end

  describe '#player_choice' do
    it 'take input and set choice for player and computer' do
      expect(player).to receive(:make_choice).with("rock")
      expect(computer).to receive(:make_random_choice)
      game.player_choice("rock")
    end
  end

  describe '#result' do
    it 'player: rock vs computer: paper, computer win' do
      allow(player).to receive(:choice).and_return("rock")
      allow(computer).to receive(:choice).and_return("paper")
      expect(game.result).to eq "#{computer.name} won!"
    end

    it 'player: rock vs computer: scissors, player win' do
      allow(player).to receive(:choice).and_return("rock")
      allow(computer).to receive(:choice).and_return("scissors")
      expect(game.result).to eq "#{player.name} won!"
    end

    it 'player: rock vs computer: rock, draw' do
      allow(player).to receive(:choice).and_return("rock")
      allow(computer).to receive(:choice).and_return("rock")
      expect(game.result).to eq "Draw!"
    end

    it 'player: paper vs computer: scissors, computer win' do
      allow(player).to receive(:choice).and_return("paper")
      allow(computer).to receive(:choice).and_return("scissors")
      expect(game.result).to eq "#{computer.name} won!"
    end

    it 'player: paper vs computer: rock, player win' do
      allow(player).to receive(:choice).and_return("paper")
      allow(computer).to receive(:choice).and_return("rock")
      expect(game.result).to eq "#{player.name} won!"
    end

    it 'player: paper vs computer: paper, draw' do
      allow(player).to receive(:choice).and_return("paper")
      allow(computer).to receive(:choice).and_return("paper")
      expect(game.result).to eq "Draw!"
    end

    it 'player: scissors vs computer: rock, computer win' do
      allow(player).to receive(:choice).and_return("scissors")
      allow(computer).to receive(:choice).and_return("rock")
      expect(game.result).to eq "#{computer.name} won!"
    end

    it 'player: scissors vs computer: paper, player win' do
      allow(player).to receive(:choice).and_return("scissors")
      allow(computer).to receive(:choice).and_return("paper")
      expect(game.result).to eq "#{player.name} won!"
    end

    it 'player: scissors vs computer: scissors, draw' do
      allow(player).to receive(:choice).and_return("scissors")
      allow(computer).to receive(:choice).and_return("scissors")
      expect(game.result).to eq "Draw!"
    end

  end
end
