require 'person'

describe Person do 

  subject = Person.new("Dave")

  describe '#name' do 
    it 'saves name as .name' do 
      expect(subject.name).to eq 'Dave'
    end
  end

  describe '#store_move' do
    it 'saves move' do
      subject.store_move("ROCK")
      expect(subject.move).to eq "ROCK"
    end
  end
end
