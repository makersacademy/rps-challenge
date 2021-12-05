require_relative '../app/lib/computer'

describe Computer do
  it "returns a random key from hash" do
    result = {}
    200.times { result[Computer.new.choice] = 0 }
    expect(result.keys.count).to eq 3
  end
end
