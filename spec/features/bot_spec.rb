require 'bot'

describe Bot do
  let(:bot) {Bot.new}
  it "expect bots name to be BOT" do
    expect(subject.name).to eq "BOT"
  end
  describe "#generate_choice" do
    it "bot can get rock" do
      allow(Random).to receive(:rand) {0}
      bot.generate_choice
      expect(bot.choice).to eq "Rock"
    end
    it "bot can get paper" do
      allow(Random).to receive(:rand) {1}
      bot.generate_choice
      expect(bot.choice).to eq "Paper"
    end
    it "bot can get scissors" do
      allow(Random).to receive(:rand) {2}
      bot.generate_choice
      expect(bot.choice).to eq "Scissors"
    end
  end
end
