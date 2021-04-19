require 'pc'

describe PC do 
  it { is_expected.to be_an_instance_of described_class }  

  it 'allows to chose one of 3 options' do
    allow(subject).to receive(:choice).and_return("Paper")
    expect(subject.choice).to eq("Paper")
  end
end