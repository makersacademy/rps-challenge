require 'game'

feature Game do
  let(:move){double :move}
  let(:cpu) {double :cpu}
  subject { described_class.new(move) }

  scenario 'it will allow the user to make a move' do
    expect(subject.user_move).to eq move
  end
  scenario 'it will allow the cpu to make a move' do
    allow(cpu).to receive(:computer_move) {:PAPER}
    #expect(subject.computer_move).to eq :PAPER
  end



end