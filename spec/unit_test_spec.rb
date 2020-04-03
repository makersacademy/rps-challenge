require './lib/unit_test'

describe UnitTest do
  it 'is wired up correctly' do
    expect(subject).to respond_to(:example_method)
  end
end
