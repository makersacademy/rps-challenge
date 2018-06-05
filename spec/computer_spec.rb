require 'computer'

describe Computer do
  it "#choose_weapon" do
    expect(Computer::WEAPONS).to receive(:sample)
    subject.choose_weapon
  end
end

# This feels like a really shit test. And yet I think its right
