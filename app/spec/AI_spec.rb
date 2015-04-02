require 'ai'

describe Ai do
  
  let(:cpu)  { Ai.new("CPU")   }
  let(:rock) { double :element }

  it "should be able to know if an element is available" do
    cpu.add_element(rock)
    expect(cpu.elements_available[0]).to eq(rock)
  end

  it "should be able to randomly select an element" do
    cpu.add_element(rock)
    cpu.random_selection #stubbing is giving me 'nil'
    expect(cpu.element_selected).to eq(rock)
  end
end