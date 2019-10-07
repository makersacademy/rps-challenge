require 'round'

describe Round do

  let(:computer) { double(:computer, store_move: nil, moves: ["paper"], add_outcome: nil) }
  let(:lily) { double(:lily, store_move: nil, moves: ["rock"], add_outcome: nil) }
  let(:subject) { Round.new(lily, computer) }

  describe '#initialize' do

    it 'should initialize with a player and the computer' do
      expect(subject.players).to eq [lily, computer]
    end

  end

  describe '#current_turn' do

    it 'should define who is playing' do
      expect(subject.current_turn).to eq lily
    end

    it 'should define who is playing' do
      subject.store_and_switch("rock")
      expect(subject.current_turn).to eq computer
    end

    it 'should return opponent' do
      expect(subject.opponent).to eq computer
    end
  end

  describe '#store_move' do

    it 'should store each move to person' do
      expect(lily).to receive(:store_move)
      subject.store_and_switch('rock')
    end

    it 'should store move and switch player' do
      subject.store_and_switch('rock')
      expect(subject.current_turn).to eq computer
    end
  end

  describe '#computer moves' do
      # it 'should generate a random move' do
      #   srand(4)
      #   expect(subject.generate_random).to eq "paper"
      # end

    it 'should store random move to person' do
      srand(4)
      expect(lily).to receive(:store_move)
      subject.computer_move
    end

    it 'should store random move to other person' do
      subject.store_and_switch("rock")
      srand(4)

      expect(lily).not_to receive(:store_move)
      expect(computer).to receive(:store_move)
      subject.computer_move
    end
  end

  describe '#winner' do

    let(:computer2) { double(:computer2, moves: ["rock"], add_outcome: nil) }
    let(:lily2) { double(:lily2, moves: ["paper"], add_outcome: nil) }
    let(:subject2) { Round.new(lily2, computer2) }
    let(:subject3) { Round.new(lily2, computer) }

    # it 'should return moves' do
    #   subject.store_and_switch("rock")
    #   srand(4)
    #   subject.computer_move
    #   expect(subject.return_last_moves).to eq "Rock, Paper"
    # end
    it 'should retreive moves from players' do
      expect(lily).to receive :moves
      expect(computer).to receive :moves
      subject.run_outcome
    end

    it 'should return winner is computer' do
      subject.run_outcome
      expect(subject.winner.last).to eq computer
    end

    it 'should return winner is player' do
      subject2.run_outcome
      expect(subject2.winner.last).to eq lily2
    end

    it 'should return draw' do
      subject3.run_outcome
      expect(subject3.winner.last).to eq "Draw"
    end

    it 'should record win/loss on player profile' do
      expect(lily).to receive :add_outcome
      subject.run_outcome
    end

    it 'should record "win" on player profile' do
      expect(lily).to receive :add_outcome
      subject.run_outcome
    end
  end

  describe '#complete?' do
    it 'should return false if current turn is not first player' do
      subject.store_and_switch("rock")
      expect(subject.complete?).to eq false
    end

    it 'should return complete if current turn has returned to first player' do
      subject.store_and_switch("rock")
      subject.store_and_switch("rock")
      expect(subject.complete?).to eq true
    end
  end
end
