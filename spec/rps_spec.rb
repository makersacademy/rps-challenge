require './lib/rps.rb'

describe 'RPS' do
  subject(:rps) { RPS.new }
  it 'creates an instance of RPS' do
    expect(subject).to be_an_instance_of(RPS)
  end
end

