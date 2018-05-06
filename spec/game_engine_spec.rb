require 'game_engine'

describe GameEngine do
  subject { described_class.create_game }
  let(:player1) { double :player1_double, name: 'Bob', weapon: :rock }
  let(:player2) { double :player2_double, name: 'Rob', weapon: :scissors }
  let(:player3) { double :player3_double, name: 'Cob', weapon: :paper }

  before do
    subject.instance_variable_set(:@players, [])
  end

  it 'should create an array to hold players ' do
    expect(subject.players).to be_an_instance_of(Array)
  end

  it 'should add players to the array' do
    subject.add_player(player1)
    subject.add_player(player2)
    expect(subject.players).to eq [player1, player2]
  end

  it 'should raise an error is more than two players try to play' do
    subject.add_player(player1)
    subject.add_player(player2)
    expect { subject.add_player(player3) }.to raise_error 'No more players can be added'
  end

  it 'should process players\' choices and return the result :win' do
    subject.add_player(player1)
    subject.add_player(player2)
    expect(subject.beats?).to be :win
  end

  it 'should process players\' choices and return the result :lose' do
    subject.add_player(player1)
    subject.add_player(player3)
    expect(subject.beats?).to be :lose
  end

  it 'should check if there is a draw and, if so, return :draw' do
    subject.add_player(player1)
    subject.add_player(player1)
    expect(subject.draw?).to be :draw
  end

  it 'should check if there is a draw and, if not, call #beats?' do
    subject.add_player(player1)
    subject.add_player(player2)
    expect(subject).to receive(:beats?)
    subject.draw?
  end

  it 'resets  @players on request' do
    subject.add_player(player1)
    subject.add_player(player2)
    subject.reset
    expect(subject.players).to eq []
  end

end
