require 'game'
require 'player'
require 'computer'

describe Game do
  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Rock")
    computer = double("computer", :move => "Paper", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Computer")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Rock")
    computer = double("computer", :move => "Scissors", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Jed")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Paper")
    computer = double("computer", :move => "Rock", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Jed")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Paper")
    computer = double("computer", :move => "Scissors", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Computer")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Scissors")
    computer = double("computer", :move => "Rock", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Computer")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Scissors")
    computer = double("computer", :move => "Paper", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Jed")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Scissors")
    computer = double("computer", :move => "Scissors", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Draw")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Rock")
    computer = double("computer", :move => "Rock", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Draw")
  end

  it 'determines the winner between player and computer' do
    player = Player.new("Jed", "Paper")
    computer = double("computer", :move => "Paper", :name => "Computer")
    subject = Game.new(player, computer)
    expect(subject.winner?).to eq("Draw")
  end
end
