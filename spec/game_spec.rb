describe Game do
  let(:player) { double :player, name: 'Liz', move: 'rock' }
  let(:computer) { double :computer, name: 'computer', move: 'scissors' }

  subject { described_class.new(player, computer) }

  it 'can create a new instance of itself' do
    expect(described_class).to respond_to(:create).with(2).arguments 
  end

  it 'can store an instance of itself' do
    game = described_class.create(player, computer)
    expect(described_class.instance).to eq game 
  end

  it 'stores a player' do
    expect(subject.player).to eq player
  end

  it 'stores a computer as a player' do
    expect(subject.opponent).to eq computer
  end

  describe '#select_winner' do 
    it 'compares player moves and returns a winner' do
      subject.select_winner
      expect(subject.winner).to eq player
    end

    it 'returns a draw if both players choose the same' do
      computer_2 = double :computer_2, name: 'computer', move: 'rock' 
      game = described_class.new(player, computer_2)
      game.select_winner
      expect(game.winner).to eq 'No one'
    end

    it 'can pick the computer as a winner' do
      computer_2 = double :computer_2, name: 'computer', move: 'paper'
      game = described_class.new(player, computer_2)
      game.select_winner
      expect(game.winner).to eq computer_2
    end 

    it 'can compare any possible outcome' do
      player_2 = double :player_2, name: 'Liz', move: 'scissors' 
      computer_2 = double :computer_2, name: 'computer', move: 'paper' 
      game = described_class.new(player_2, computer_2)
      game.select_winner
      expect(game.winner).to eq player_2
    end
  end
end
