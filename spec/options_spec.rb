require 'options'

describe Options do

  before { subject.add_choice :rock }

  it 'can add a game option' do
    expect(subject.choices).to include(:rock)
  end

  it 'can display all of the choices' do
    subject.add_choice :paper
    expect(subject.choices).to contain_exactly(:rock, :paper)
  end

  it 'this choice is already added' do
    message = "You have already added this."
    expect { subject.add_choice(:rock) }.to raise_error message
  end

end
