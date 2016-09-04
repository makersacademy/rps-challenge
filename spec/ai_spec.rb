require 'ai.rb'

describe Ai do

  subject(:rock_heavy) {Ai.new(85,70,70)}
  subject(:paper_heavy) {Ai.new(70,85,70)}
  subject(:scissors_heavy) {Ai.new(70,70,85)}

  context 'random behaviour setting' do
    it 'initializes the Ai with a new random number setting each time' do
      expect(subject.rock_value).to be_within(25).of(75)
      expect(subject.paper_value).to be_within(25).of(75)
      expect(subject.scissors_value).to be_within(25).of(75)
      puts subject.rock_value
      puts subject.paper_value
      puts subject.scissors_value
    end
  end

  context 'pick_move' do
    it 'always picks a valid move and does not raise an error' do
      1000.times do
        expect{subject.pick_move}.to_not raise_error
      end
    end

    it 'returns 1, 2, or 3 as a reponse always' do
      1000.times do
        expect(subject.pick_move).to be_between(1,3)
      end
    end
  end

  context 'personality testing' do
    before(:each) do
      @rock_count = 0
      @paper_count = 0
      @scissors_count = 0
    end

    it 'picks rock far more than it picks either other option' do
      1000.times do
        @rock_count += 1 if rock_heavy.pick_move == 1
        @paper_count += 1 if rock_heavy.pick_move == 2
        @scissors_count += 1 if rock_heavy.pick_move == 3
      end

      expect(@rock_count).to be > @paper_count
      expect(@rock_count).to be > @scissors_count

      puts "Rock: " + @rock_count.to_s
      puts "Paper: " + @paper_count.to_s
      puts "Scissors: " + @scissors_count.to_s
    end

    it 'picks rock far more than it picks either other option' do
      1000.times do
        @rock_count += 1 if paper_heavy.pick_move == 1
        @paper_count += 1 if paper_heavy.pick_move == 2
        @scissors_count += 1 if paper_heavy.pick_move == 3
      end

      expect(@paper_count).to be > @rock_count
      expect(@paper_count).to be > @scissors_count

      puts "Rock: " + @rock_count.to_s
      puts "Paper: " + @paper_count.to_s
      puts "Scissors: " + @scissors_count.to_s
    end

    it 'picks rock far more than it picks either other option' do
      1000.times do
        @rock_count += 1 if paper_heavy.pick_move == 1
        @paper_count += 1 if paper_heavy.pick_move == 2
        @scissors_count += 1 if paper_heavy.pick_move == 3
      end

      expect(@paper_count).to be > @rock_count
      expect(@paper_count).to be > @scissors_count

      puts "Rock: " + @rock_count.to_s
      puts "Paper: " + @paper_count.to_s
      puts "Scissors: " + @scissors_count.to_s
    end

  end
end
