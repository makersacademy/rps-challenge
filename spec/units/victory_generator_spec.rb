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
    expect(subject.victory_type([billy, rpslsbot])).to eq 'crushes'
  end
end
