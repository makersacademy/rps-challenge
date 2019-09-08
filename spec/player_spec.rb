require './lib/player'

describe Player do
  subject { init_player }
  let(:decision_maker) { double('DecisionMaker', choose_move: :a_test_move) }

  def init_player
    described_class.new('player1', decision_maker, AppContext.instance.id_generator)
  end

  it 'initializes with a name and delegate' do
    expect(subject.name).to eq('player1')
    expect(subject.decision_delegate).to be(decision_maker)
  end

  it 'has a unique id' do
    10.times { expect(subject.id).not_to eq init_player.id }
  end

  it 'delegates move decisions to its decision delegate' do
    subject.request_move('')
    expect(subject.chosen_move).to eq :a_test_move
  end

  it 'nils its chosen move when starting a new turn' do
    subject.request_move('')
    subject.new_turn
  end
end