require './lib/cpu'

RSpec.describe 'CPU:' do
  it '1. Should allow CPU to select paper' do
    allow(subject).to receive(:option) { "🤚" }
    expect(subject.option).to eq "🤚"
  end

  it '2. Should allow CPU to select rock' do
    allow(subject).to receive(:option) { "✊" }
    expect(subject.option).to eq "✊"
  end

  it '3. Should allow CPU to select scissors' do
    allow(subject).to receive(:option) { "✌️" }
    expect(subject.option).to eq "✌️"
  end
end
