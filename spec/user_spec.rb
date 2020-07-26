require_relative './spec_helper'
require_relative '../models/user'

describe User do

  subject { User.new('Daniel') }

  it 'creates a user' do
    expect(subject.name).to eq 'Daniel'
  end

  it '#current_move' do
    expect(subject.move).to be_nil
    expect{subject.current_move('Paper')}.to change{ subject.move }.to eq 'Paper'
  end

  it 'move stored in moves array' do
    expect { subject.current_move('Paper') }.to change { subject.moves.size }.by(1)
  end

  it '#reset' do
    subject.current_move('Paper')
    expect { subject.reset }.to change { subject.move }.to nil
  end

end
