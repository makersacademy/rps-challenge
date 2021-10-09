require "bot"

describe Bot do
  it { should respond_to(:choose) }

  it "returns a choice" do
    bot = Bot.new

    allow(bot).to receive(:rand).and_return(1)
    expect(bot.choose).to eq "PAPER"
  end
end
