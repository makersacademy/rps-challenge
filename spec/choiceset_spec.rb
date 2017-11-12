require 'choiceset'
require_relative 'choice_spec'

describe ChoiceSet::Paper do
  describe '#initialize' do
    context 'when created' do
      it 'has name paper' do
        expect(subject.name).to eq :paper
      end

      it 'is set up to kill rock' do
        expect(subject.kills).to include :rock
      end

      it 'is set up to kill spock' do
        expect(subject.kills).to include :spock
      end
    end
  end

  include_examples 'choice'
end

describe ChoiceSet::Scissors do
  describe '#initialize' do
    context 'when created' do
      it 'has name scissors' do
        expect(subject.name).to eq :scissors
      end

      it 'is set up to kill paper' do
        expect(subject.kills).to include :paper
      end

      it 'is set up to kill lizard' do
        expect(subject.kills).to include :lizard
      end
    end
  end

  include_examples 'choice'
end

describe ChoiceSet::Rock do
  describe '#initialize' do
    context 'when created' do
      it 'has name rock' do
        expect(subject.name).to eq :rock
      end

      it 'is set up to kill scissors' do
        expect(subject.kills).to include :scissors
      end

      it 'is set up to kill lizard' do
        expect(subject.kills).to include :lizard
      end
    end
  end

  include_examples 'choice'
end

describe ChoiceSet::Lizard do
  describe '#initialize' do
    context 'when created' do
      it 'has name lizard' do
        expect(subject.name).to eq :lizard
      end

      it 'is set up to kill paper' do
        expect(subject.kills).to include :paper
      end

      it 'is set up to kill spock' do
        expect(subject.kills).to include :spock
      end
    end
  end
  
  include_examples 'choice'
end

describe ChoiceSet::Spock do
  describe '#initialize' do
    context 'when created' do
      it 'has name spock' do
        expect(subject.name).to eq :spock
      end

      it 'is set up to kill scissors' do
        expect(subject.kills).to include :scissors
      end

      it 'is set up to kill rock' do
        expect(subject.kills).to include :rock
      end
    end
  end

  include_examples 'choice'
end

describe 'ChoiceSet::Set' do
  subject { ChoiceSet::Set }

  describe 'has correct members' do
    it { is_expected.to include :paper }
    it { is_expected.to include :scissors }
    it { is_expected.to include :rock }
    it { is_expected.to include :lizard }
    it { is_expected.to include :spock }
  end
end
