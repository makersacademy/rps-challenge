require 'game'

describe Game do

  subject(:game) { described_class.new('John') }

  it "returns the name of the player" do
    expect(game.name).to eq 'John'
  end

  it { is_expected.to respond_to :choice_rand }

  it 'returns the computers choice' do
    allow(Kernel).to receive(:rand).and_return(0)
    game.choose_mine
    expect(game.choice_my).to eq 'Rock'
  end

  it "returns the result of Rock vs Paper" do
    expect(game.the_winner_is('Rock', 'Paper')).to eq Game::I_WON
  end

  it "returns the result of Rock vs Scissors" do
    expect(game.the_winner_is('Rock', 'Scissors')).to eq Game::YOU_WON
  end

  it "returns the result of Paper vs Rock" do
    expect(game.the_winner_is('Paper', 'Rock')).to eq Game::YOU_WON
  end

  it "returns the result of Paper vs Scissors" do
    expect(game.the_winner_is('Paper', 'Scissors')).to eq Game::I_WON
  end

  it "returns the result of Scissors vs Rock" do
    expect(game.the_winner_is('Scissors', 'Rock')).to eq Game::I_WON
  end

  it "returns the result of Scissors vs Paper" do
    expect(game.the_winner_is('Scissors', 'Paper')).to eq Game::YOU_WON
  end

  it "returns the result of Rock vs Rock" do
    expect(game.the_winner_is('Rock', 'Rock')).to eq Game::DRAW
  end

  it "returns the result of Paper vs Paper" do
    expect(game.the_winner_is('Paper', 'Paper')).to eq Game::DRAW
  end

  it "returns the result of Scissors vs Scissors" do
    expect(game.the_winner_is('Scissors', 'Scissors')).to eq Game::DRAW
  end




end
