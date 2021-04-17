require 'player'

describe Player do

  context '#initialize' do

    it 'can take and return a name' do
      subject = Player.new("matt")
      expect(subject.name).to eq("matt")
    end

  end

end
