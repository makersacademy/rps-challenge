require 'options'

describe Options do

  before { subject.add_choice :rock }

  it 'can add a choice' do
    expect(subject.choices).to include(:rock)
  end

  it 'can add several choices' do
    subject.add_choice :paper, :scissors
    expect(subject.choices).to contain_exactly(:rock, :paper, :scissors)
  end

  it 'can display all of the choices' do
    subject.add_choice :paper
    expect(subject.choices).to contain_exactly(:rock, :paper)
  end

  it 'will only add the missing options' do
    subject.add_choice :rock, :paper, :paper, :scissors
    expect(subject.choices).to contain_exactly(:rock, :paper, :scissors)
  end

end
