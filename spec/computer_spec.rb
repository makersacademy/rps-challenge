require 'computer'

describe Computer do
  it "#choose_weapon" do
    expect(subject.weapons).to receive(:sample)
    subject.choose_weapon
  end
end

# This feels like a really shit test
