require 'ai.rb'

describe AI do
  it 'responds to method random' do
    expect(subject).to respond_to(:random)
  end
end
