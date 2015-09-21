require 'weapon'

describe Weapon do

  let(:weapon){Weapon.new(:name, :weapon)}

  describe '#new' do

    it 'requires an argument on initilaizing' do
      expect{Weapon.new}.to raise_error(ArgumentError)
    end

    it 'has a name after initilaizing' do
      weapon = Weapon.new("Name")
      expect(weapon.name).to eq "Name"
    end

    it 'has a list of lesser weapons after initilaizing' do
      weapon = Weapon.new("Name", :lesser1, "lesser2", :lesser3)
      expect(weapon.lesser_weapons).to eq [:lesser1, "lesser2", :lesser3]
    end

  end

  it 'can create rock' do
    rock = Weapon.rock
    expect(rock.name).to eq :rock
  end

  it 'can create paper' do
    paper = Weapon.paper
    expect(paper.name).to eq :paper
  end

  it 'can create scissors' do
    scissors = Weapon.scissors
    expect(scissors.name).to eq :scissors
  end

  describe '#beats?' do

    it 'responds to #beats? method' do
      expect(weapon).to respond_to(:beats?)
    end

    it 'rock beats scissors' do
      rock = Weapon.rock
      scissors = Weapon.scissors
      expect(rock.beats?(scissors)).to be true
    end

    it 'rock does not beat paper' do
      rock = Weapon.rock
      paper = Weapon.paper
      expect(rock.beats?(paper)).to be false
    end

    it 'rock does not beat itself' do
      rock1 = Weapon.rock
      rock2 = Weapon.rock
      expect(rock1.beats?(rock2)).to be false
    end

    it 'paper beats rock' do
      rock = Weapon.rock
      paper = Weapon.paper
      expect(paper.beats?(rock)).to be true
    end

    it 'paper does not beat scissors' do
      paper = Weapon.paper
      scissors = Weapon.scissors
      expect(paper.beats?(scissors)).to be false
    end

    it 'paper does not beat itself' do
      paper1 = Weapon.paper
      paper2 = Weapon.paper
      expect(paper1.beats?(paper2)).to be false
    end

    it 'scissors beats paper' do
      scissors = Weapon.scissors
      paper = Weapon.paper
      expect(scissors.beats?(paper)).to be true
    end

    it 'scissors do not beat rock' do
      scissors = Weapon.scissors
      rock = Weapon.rock
      expect(scissors.beats?(rock)).to be false
    end

    it 'scissors do not beat themselves' do
      scissors1 = Weapon.scissors
      scissors2 = Weapon.scissors
      expect(scissors1.beats?(scissors2)).to be false
    end

  end

end