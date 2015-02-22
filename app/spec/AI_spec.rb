require 'AI'

describe AI do
  
  let(:cpu)  { AI.new("CPU")   }
  let(:rock) { double :element }

  it "should be able to know if an element is available" do
    cpu.add_element(rock)
    expect(cpu.elements_available[0]).to eq(rock)
  end

  it "should be able to randomly select an element" do
    cpu.add_element(rock)
    allow(cpu).to receive(:rand_num).and_return(1)
    cpu.random_selection
    expect(cpu.element_selected).to eq(rock)
  end
end