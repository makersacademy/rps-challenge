require 'game'

describe Game do

  let(:kat)      { spy("Player") }
  let(:computer) { spy("Computer") }

  subject(:game) { described_class.new(kat, computer) }

  before(:each) do
    allow(kat).to receive(:select_choice)
    allow(computer).to receive(:select_choice)
    allow(kat).to receive(:choice).and_return(:rock)
    allow(computer).to receive(:choice).and_return(:scissors)
  end

  it 'should have two players' do
    expect(game).to have_attributes(player: kat, computer: computer)
  end

  it 'should respond to the method place_move' do
    expect(game).to respond_to(:place_moves).with(1).argument
  end

  it 'should delegate to player and computer when calling place_moves' do
    game.place_moves("Rock")
    expect(kat).to have_received(:select_choice)
  end

  it 'should respond to the method result' do
    expect(game).to respond_to(:result)
  end

  it 'should return the correct result when calling the method result' do
    expect(game.result([kat.choice, computer.choice])).to eq(:win)
  end

end
