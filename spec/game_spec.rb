require_relative './spec_helper'
require_relative '../models/game'

describe Game do
  let(:user_1) { User.new('Daniel')}
  let(:user_2) { User.new('Computer') }
  subject { Game.create(user_1, user_2)}

  it 'creates a game instance' do
    expect(subject).to be_an_instance_of Game
  end

  it 'returns an game instance' do
    expect(Game.play).to be_an_instance_of Game
  end

  it 'changes turns' do
    expect{ subject.rotate }.to change{ subject.current_player }
  end

end