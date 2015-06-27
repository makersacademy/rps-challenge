require 'game'

describe Game do 

  it { is_expected.to respond_to :comp_choice }

  it 'can make a choice for the computer' do
    expect(subject.comp_choice).not_to eq(nil)
  end

  it 'can make a choice for the computer' do
    expect(subject.comp_choice).not_to eq(nil)
  end

  # it 'stores the computer selection' do
  #   allow(subject).to receive(:comp_choice).and_return(:paper)
  #   expect(subject.comp_pick).to eq 'paper'
  # end
end


