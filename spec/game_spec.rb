require 'game'

describe Game do
subject(:game) { Game.new("Joe", "Ollie")}

let (:weapon1) { double :controller, :weapon => "Rock"}
let (:weapon2) { double :controller, :weapon => "Paper"}
let (:weapon3) { double :controller, :weapon => "Scissors"}

  it 'Joe wins' do
    subject.player_1.weapon1
    subject.player_2.weapon3
    expect(subject.winnner).to eq "#{subject.player_1.pname} wins"
  end

  it 'Ollie wins' do
    subject.player_1.weapon1
    subject.player_2.weapon2
    expect(subject.winnner).to eq "#{subject.player_2.pname} wins"
  end

  it 'Draw' do
    subject.player_1.weapon2
    subject.player_2.weapon2
    expect(subject.winner).to eq "Draw"
  end
end
