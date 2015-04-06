require 'player'

describe Player do
  name = 'Name'
  subject { described_class.new name }

  it 'can report its name' do
    expect(subject.name).to eq name
  end

  it 'can select an action' do
    expect(subject).to respond_to :select_action
  end

  it 'can disclose previously selected valid action ‘:rock’' do
    subject.select_action :rock
    expect(subject.action).to equal :rock
  end

  it 'can disclose previously selected valid action ‘:paper’' do
    subject.select_action :paper
    expect(subject.action).to equal :paper
  end

  it 'can disclose previously selected valid action ‘:scissors’' do
    subject.select_action :scissors
    expect(subject.action).to equal :scissors
  end

  it 'ignores previously selected invalid action ‘:action’' do
    subject.select_action :action
    expect(subject.action).to be_nil
  end

  it 'can auto-select a valid action' do
    expect(subject).to respond_to :auto_select_action
    subject.auto_select_action
    expect(subject.action).to equal(:rock).or equal(:paper).or equal(:scissors)
  end
end
