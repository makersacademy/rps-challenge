require 'game'
require 'player'
require 'machine'

describe Game do


let(:player) {double :player, name: "Thady"}
let(:machine) {double :player}
subject {described_class.new(player)}

it {is_expected.to respond_to(:player)}
it {is_expected.to respond_to(:machine)}
it {is_expected.to respond_to(:winner)}
it {is_expected.to respond_to(:player_weapon)}


describe '#initialize' do
  it 'sets player and machine' do
    expect(subject.machine).to be_instance_of Machine
    expect(subject.player).to be_instance_of Player
  end
end

describe '#weapon_assign' do

  it 'passes players chosen weapon' do
    subject.weapon_assign('Rock')
    expect(subject.player_weapon).to be_instance_of Rock
  end

end
end
