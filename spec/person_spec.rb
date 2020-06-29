require 'person'

describe Person do
  describe '#initialize' do
    it 'is an instance of person' do
      person = Person.new
      expect(person).to be_an_instance_of(Person)
    end
    it 'initializes with a default name of computer' do
      expect(subject.name).to eq("Computer")
    end
    it 'initializes with a default points total of 0'do
      expect(subject.points).to eq(0)
    end
    it 'initializes with a name if given' do
      person = Person.new("test")
      expect(person.name).to eq("test")
    end
  end
end