require 'round'

describe Round do

  let(:computer) { double(:computer, store_move: nil) }
  let(:lily) { double(:lily, store_move: nil) }
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
end
