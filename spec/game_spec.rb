require 'game'

RSpec.describe Game do
  let(:user) { double :user }
  # let(:cpu) { double(CPU.new) }
  let(:subject) { Game.new(user) }

  it 'scissor & rock, scissor win' do
    allow(user).to receive(:input) { "Scissors" }
    expect(subject.result("Paper")).to eq("You Win!")
  end

  it 'scissor & rock, scissor win' do
    allow(user).to receive(:input) { "Rock" }
    expect(subject.result("Paper")).to eq("You Loose!")
  end

  it 'return Pair! if user input == cpu' do
    allow(user).to receive(:input) { "Paper" }
    expect(subject.result("Paper")).to eq("Pair!")
  end
end
