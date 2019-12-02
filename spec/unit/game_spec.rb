require 'game'
require_relative "fix_subject_move_helper.rb"

describe Game do
  let(:player1) { double :player1 }

  subject { Game.new(player1) }

  it 'should have a player 1' do
    expect(subject).to have_attributes player_1: player1
  end

  it 'should generate Rock' do
    srand(2)
    expect(subject.random_move).to eq "Rock"
  end

  it 'should generate Paper' do
    srand(1)
    expect(subject.random_move).to eq "Paper"
  end

  it 'should generate Scissors' do
    srand(3)
    expect(subject.random_move).to eq "Scissors"
  end

  before do
    allow(player1).to receive(:move).and_return "Rock"
  end

  context "Player has selected Rock" do
    it 'should return draw' do
      subject_rock(subject)
      expect(subject.result).to eq "Draw"
    end
    it 'should return a loss' do
      srand(1)
      subject.random_move
      expect(subject.result).to eq "You lose"
    end
    it 'should return a win' do
      srand(3)
      subject.random_move
      expect(subject.result).to eq "You win"
    end
  end

end
