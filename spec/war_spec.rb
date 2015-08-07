require "war"

describe War do
  it "can choose a weapon" do
    expect(subject).to respond_to(:choose_weapon).with(1).argument
  end
end
