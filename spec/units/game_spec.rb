require 'game'

describe Game do
  it { is_expected.to be_instance_of Game }
  let(:player) { double "player" }
  subject { described_class.new(player) }

  it "knows the name of the player" do
    expect(subject.player).to be player
  end
  #
  # it "returns its instance when loaded" do
  #   expect(Game.load).to be_instance_of Game
  # end

  it "knows the score for the player" do
    expect(subject.player_score).to be 0
  end

  it "knows the score for the computer" do
    expect(subject.computer_score).to be 0
  end

  it "reads the game message" do
    expect(subject.message).to start_with "Okay"
  end

  describe '#rock' do
    it "increase player score when computer plays scissors" do
      allow(subject).to receive(:computer_choice) { "scissors" }
      expect { subject.rock }.to change { subject.player_score }.by(1)
    end

    it "sets player image to rock" do
      subject.rock
      expect(subject.player_image).to eq subject.rock_image
    end

    it "increases computer score when computer plays paper" do
      allow(subject).to receive(:computer_choice) { "paper" }
      expect { subject.rock }.to change { subject.computer_score }.by(1)
    end
  end

  describe '#paper' do
    it "increase player score when computer plays rock" do
      allow(subject).to receive(:computer_choice) { "rock" }
      expect { subject.paper }.to change { subject.player_score }.by(1)
    end

    it "increases computer score when computer plays scissors" do
      allow(subject).to receive(:computer_choice) { "scissors" }
      expect { subject.paper }.to change { subject.computer_score }.by(1)
    end
  end

  describe '#scissors' do
    it "increase player score when computer plays paper" do
      allow(subject).to receive(:computer_choice) { "paper" }
      expect { subject.scissors }.to change { subject.player_score }.by(1)
    end

    it "increases computer score when computer plays rock" do
      allow(subject).to receive(:computer_choice) { "rock" }
      expect { subject.scissors }.to change { subject.computer_score }.by(1)
    end
  end

  describe '#end?' do
    it "checks if either score = 10" do
      10.times { subject.player_wins }
      expect(subject.end?).to be true
    end
  end

  describe '#computer_choice' do
    it "randomly selects rock/paper/scissors" do
      expect(["rock", "paper", "scissors"]).to include(subject.computer_choice)
    end
  end

  describe '#compare' do
    it "draws if hands are the same" do
      subject.compare("rock", "rock")
      expect(subject.message).to eq "Draw!"
    end

    it "increases player score if player wins" do
      expect { subject.compare("rock", "scissors") }.to change { subject.player_score }.by(1)
    end

    it "increases player score if player wins" do
      expect { subject.compare("scissors", "paper") }.to change { subject.player_score }.by(1)
    end

    it "increases player score if player wins" do
      expect { subject.compare("paper", "rock") }.to change { subject.player_score }.by(1)
    end

    it "increase computer score if player loses" do
      expect { subject.compare("rock", "paper") }.to change { subject.computer_score }.by(1)
    end

  end
end
