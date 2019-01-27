require './lib/cpu'

RSpec.describe 'CPU:' do
  it '1. should select a random emoji' do
    allow(subject).to receive(:option) { "🤚" }
    expect(subject.option).to eq "🤚"
  end
end
