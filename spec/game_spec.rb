require_relative '../lib/game.rb'

describe Game do

  let( :player ) { double:player }

  it 'should respond to result' do
    is_expected.to respond_to(:result).with(1).argument
  end

  it 'should respond to comp_move' do
    is_expected.to respond_to :comp_move
  end

  it 'Player can win' do
    allow(subject).to receive(:comp_move) { :scissors }
    allow(player).to receive(:move) { "rock" }
    expect(subject.result player).to eq("You win! Computer chose scissors!")
  end

  it 'There can be a draw' do
    allow(subject).to receive(:comp_move) { :paper }
    allow(player).to receive(:move) { "paper" }
    expect(subject.result player).to eq("Draw, Computer chose paper too!")
  end

  it 'Computer can win' do
    allow(subject).to receive(:comp_move) { :rock }
    allow(player).to receive(:move) { "scissors" }
    expect(subject.result player).to eq("Computer wins! It chose rock!")
  end
end
