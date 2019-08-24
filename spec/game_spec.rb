require 'game'

RSpec.describe Game do
  let(:user) { double :user }
  let(:cpu) { double(CPU.new) }
  let(:subject) { Game.new(user, cpu) }

  before(:each) {
    allow(cpu).to receive(:calc_score) 
    allow(cpu).to receive(:score)
    allow(user).to receive(:calc_score)
    allow(user).to receive(:score)
  }

  it 'scissor & rock, scissor win' do
    allow(cpu).to receive(:input) { 'Paper' }
    allow(user).to receive(:input) { 'Scissors' }
    expect(subject.result).to eq('You win!')
  end

  it 'scissor & rock, scissor win' do
    allow(user).to receive(:input) { 'Rock' }
    allow(cpu).to receive(:input) { 'Paper' }
    expect(subject.result).to eq("You loose!")
  end

  it 'return Pair! if user input == cpu' do
    allow(cpu).to receive(:input) { "Paper" }
    allow(user).to receive(:input) { 'Paper' }
    expect(subject.result).to eq("Draw!")
  end
end
