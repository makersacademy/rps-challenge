require 'computer'

describe Computer do

  let(:item) {double :item}

  it "should get random weapon from the item list" do
    comp = Computer.new
    expect(item).to receive(:values).and_return(["paper", "rock"])
    comp.random_weapon(item)
    expect(comp.weapon).to satisfy do |comp|
       ["rock", "paper", "scissor"].any? {|option| comp == option }
    end
  end

end