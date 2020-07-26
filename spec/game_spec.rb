require_relative './spec_helper'
require_relative '../models/game'

describe Game do
  let(:user_1) { User.new('Daniel')}
  let(:user_2) { User.new('Computer') }
  subject { described_class.create(user_1, user_2)}

  it 'creates a game instance' do
    expect(subject).to be_an_instance_of described_class
  end

  it 'returns an game instance' do
    expect(described_class.play).to be_an_instance_of described_class
  end

  it 'stores a current player' do
    expect(subject.current_user).to be_an_instance_of User
  end

  context 'Does not change User_1/User_2 but changes Current_User' do
    it '#change_turns via #rotate' do
      expect(subject.user_1.name).to eq 'Daniel'
      expect(subject.current_user.name).to eq 'Daniel'
      expect{ subject.rotate }.to change{ subject.current_user.name }.to 'Computer'
      expect(subject.user_1.name).to eq 'Daniel'
    end
  end

  it '#reset_player_moves' do
    subject.user_1.current_move('Paper')
    subject.user_2.current_move('Scissors')
    expect { subject.reset_player_moves }.to change { user_1.move }.and change{ user_2.move }.to nil

  end

  context 'Game scenarios' do
    it 'Victory: Paper vs Rock' do
      subject.user_1.current_move('Paper')
      subject.user_2.current_move('Scissors')
      expect(subject.over?).to be true
    end
    it 'Victory: Lizard vs Spock' do
      subject.user_1.current_move('Lizard')
      subject.user_2.current_move('Spock')
      expect(subject.over?).to be true
    end

    it '#tie?' do
      subject.user_1.current_move('Paper')
      subject.user_2.current_move('Paper')
      expect(subject.tie?).to be true
    end
  end
end