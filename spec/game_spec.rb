require "game"

describe Game do
  let(:player)   {double :player}
  let(:computer) {double :computer}

  context "Player wins point" do
    it "is Player's point if Player chooses rock and Computer chooses scissors" do
      player = Player.new
      player.select(:rock)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:scissors)
      expect{subject.counter_increment}.to change{subject.count}.from(0).to(1)
    end

    it "is Player's point if Player chooses paper and Computer chooses rock" do
      player = Player.new
      player.select(:paper)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:rock)
      expect{subject.counter_increment}.to change{subject.count}.from(0).to(1)
    end

    it "is Player's point if Player chooses scissors and Computer chooses paper" do
      player = Player.new
      player.select(:scissors)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:paper)
      expect{subject.counter_increment}.to change{subject.count}.from(0).to(1)
    end
  end

  context "Computer wins point" do
    it "is Computer's point if Player chooses rock and Computer chooses paper" do
      player = Player.new
      player.select(:rock)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:paper)
      expect{subject.counter_increment}.to change{subject.count}.from(0).to(1)
    end

    it "is Computer's point if Player chooses paper and Computer chooses scissors" do
      player = Player.new
      player.select(:paper)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:scissors)
      expect{subject.counter_increment}.to change{subject.count}.from(0).to(1)
    end

    it "is Computer's point if Player chooses scissors and Computer chooses rock" do
      player = Player.new
      player.select(:scissors)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:scissors)
      expect{subject.counter_increment}.to change{subject.count}.from(0).to(1)
    end
  end

  context "Point is a draw" do
    xit "is a draw if Player chooses rock and Computer chooses rock" do
      player = Player.new
      player.select(:rock)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:rock)
      expect{subject.counter_increment}.to_not change{subject.count}
    end

    xit "is a draw if Player chooses paper and Computer chooses paper" do
      player = Player.new
      player.select(:paper)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:paper)
      expect{subject.counter_increment}.to_not change{subject.count}
    end

    xit "is a draw if Player chooses scissors and Computer chooses scissors" do
      player = Player.new
      player.select(:scissors)
      computer = Computer.new
      allow(computer).to receive(:select).and_return(:scissors)
      expect{subject.counter_increment}.to_not change{subject.count}
    end
  end
end
