require 'victory_generator'

RSpec.describe VictoryGenerator do

  let(:billy) { double :player, name: 'Billy', move: 'Rock' }
  let(:rpslsbot) { double :RPSLSbot, name: 'RPSLSbot', move: 'Scissors' }

  it 'should know who has won' do
    expect(subject.winner([billy, rpslsbot])).to eq billy
  end

  it 'should get the winner even if they are in the wrong order' do
    expect(subject.winner([rpslsbot, billy])).to eq billy
  end

  it 'should know how the victory happed (e.g. lizard POISONS spock)' do
    expect(subject.victory_type([billy, rpslsbot])).to eq 'blunts'
  end

  it 'knows when a draw happens' do
    expect(subject.draw?([billy, billy])).to eq true
  end
end
