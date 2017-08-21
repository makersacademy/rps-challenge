require 'weapon'

describe Weapon do

  subject { Weapon.new }

  it 'works' do
    expect(subject.class).to eq described_class
  end

  context '#type' do
    it 'can be set as rock' do
      rock = Weapon.new('rock')
      expect(rock.type).to eq 'rock'
    end

    it 'can be set as paper' do
      paper = Weapon.new('paper')
      expect(paper.type).to eq 'paper'
    end

    it 'can be set as scissors' do
      scissors = Weapon.new('scissors')
      expect(scissors.type).to eq 'scissors'
    end

    it 'cannot be anything else' do
      expect { Weapon.new('other') }.to raise_error 'invalid weapon'
    end
  end

  context '#randomise' do
    it 'randomises the weapon if not given one' do
      random_weapon1 = Weapon.new
      loop do
        @random_weapon2 = Weapon.new
        break unless random_weapon1.type == @random_weapon2.type
      end
      expect(random_weapon1.type).to_not eq @random_weapon2.type
    end
  end
end
