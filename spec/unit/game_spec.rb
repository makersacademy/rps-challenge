require 'game'

describe Game do
  let(:player1) { double :player1 }

  subject{ Game.new(player1) }

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
    allow(player_1)
    srand(3)
    expect(subject.random_move).to eq "Scissors"
  end

  # context "Player has selected Rock" do
  #   it 'should return draw' do
  #     srand(2)
  #     subject.random_move
  #   end
  end

end
