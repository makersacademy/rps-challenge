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
    it 'accepts two moves and returns a winner' do
      subject.select_winner(player: 'rock', opponent: 'scissors')
      expect(subject.winner).to eq player
    end

    it 'returns a draw if both players choose the same' do
      subject.select_winner(player: 'rock', opponent: 'rock')
      expect(subject.winner).to eq 'No one'
    end

    it 'compares player move against opponent move by default' do
      subject.select_winner
      expect(subject.winner).to eq player
    end

    it 'can pick the computer as a winner' do
      subject.select_winner(player: 'rock', opponent: 'paper')
      expect(subject.winner).to eq computer
    end 

    it 'can compare any possible outcome' do
      subject.select_winner(player: 'scissors', opponent: 'paper')
      expect(subject.winner).to eq player
    end
  end
end