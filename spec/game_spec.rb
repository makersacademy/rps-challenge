require './lib/game'
describe Game do
  let(:player_class) { double :player_class, new: player                   }
  let(:player)       { double :player, name: 'Jack'                        }
  let(:subject)      { described_class.new(player_class, 'Jack')           }
  let(:multi_subj)   { described_class.new(player_class, 'Jack', 'Durain') } 
  context 'core methods' do
    describe '#first_round' do
      it { expect(subject).to respond_to(:first_round) }
      it { expect(subject.first_round).to eq(true) }
      it { expect { subject.make_move('Rock') }.to change {subject.first_round} }
    end
    describe '#no_args_instance_creation' do
      it { expect(subject).to respond_to(:no_args_instance_creation) }
    end
    describe '#score' do
      it { expect(subject).to respond_to(:score) }
      it { expect(subject.score).to eq([0, 0]) }
    end
    describe '#players' do
      it { expect(subject).to respond_to(:players) }
      it { expect(subject.players.first).to eq(player) }
    end
    describe '#names' do
      it { expect(subject).to respond_to(:names) }
      it { expect(subject.names[0]).to eq('Jack') }
    end
    describe '#move' do
      it { expect(subject).to respond_to(:move) }
    end
    describe '#make_move' do
      it { expect(subject).to respond_to(:make_move).with(2).arguments }
    end
    describe '#rand_choice' do
      it { expect(subject).to respond_to(:rand_choice) }
      it { expect(subject.rand_choice).to be_a(String) }
    end
    describe '#WINNERS' do
      it { expect(Game::WINNERS).to eq([[:Scissors, :Paper], [:Paper, :Rock], [:Rock, :Scissors],
                                        [:Rock, :Lizard], [:Lizard, :Spock], [:Spock, :Scissors],
                                        [:Scissors, :Lizard], [:Lizard, :Paper], [:Paper, :Spock],
                                        [:Spock, :Rock]                           
                                       ]) 
      }
    end
    describe '#num_players' do
      it { expect(subject).to respond_to(:num_players) }
      it { expect(subject.num_players).to eq(1) }
      it { expect(multi_subj.num_players).to eq(2) }
    end
    describe '#game_over' do
      it { expect(subject).to respond_to(:game_over) }
      it { expect(subject.game_over).to eq(false) }
      it 'game over is true if score reaches 5' do
        5.times { |_| subject.make_move('Rock', 'Scissors') }
        expect(subject.game_over).to eq(true)
      end
    end
    describe '#output_variables' do
      it { expect(subject).to respond_to(:move_list) }
    end
  end
  context 'Move combinations' do
    describe 'p1_Rock beats p2_scissors' do
      it { expect(subject.move('Rock', 'Scissors')).to eq([1, 0]) }
      it 'changes score correctly' do
        subject.make_move('Rock', 'Scissors')
        expect(subject.score).to eq([1, 0])
      end
    end
    describe 'p2_paper beats p1_rock' do
      it { expect(subject.move('Rock', 'Paper')).to eq([0, 1]) }
      it 'changes score correctly' do
        subject.make_move('Rock', 'Paper')
        expect(subject.score).to eq([0, 1])
      end
    end
    describe 'p1_scissors beats p2_paper' do
      it { expect(subject.move('Scissors', 'Paper')).to eq([1, 0]) }
      it 'changes score correctly' do
        subject.make_move('Scissors', 'Paper')
        expect(subject.score).to eq([1, 0])
      end
    end
    describe 'All other additional combos' do
      it { expect(subject.move('Spock', 'Scissors')).to eq([1, 0]) }
      it { expect(subject.move('Lizard', 'Paper')).to eq([1, 0]) }
      it { expect(subject.move('Spock', 'Paper')).to eq([0, 1]) }
      it { expect(subject.move('Lizard', 'Scissors')).to eq([0, 1]) }
      it { expect(subject.move('Spock', 'Lizzard')).to eq([0, 1]) }
      it { expect(subject.move('Lizzard', 'Rock')).to eq([0, 1]) }
    end
    describe 'all draws work correctly' do
      it { expect(subject.move('Rock', 'Rock')).to eq([0, 0]) }
      it { expect(subject.move('Paper', 'Paper')).to eq([0, 0]) }
      it { expect(subject.move('Scissors', 'Scissors')).to eq([0, 0]) }
      it 'does not change score' do
        subject.make_move('Rock', 'Rock')
        subject.make_move('Paper', 'Paper')
        subject.make_move('Scissors', 'Scissors')
        subject.make_move('Spock', 'Spock')
        subject.make_move('Lizard', 'Lizard')
        expect(subject.score).to eq([0, 0])
      end
    end
  end
end
