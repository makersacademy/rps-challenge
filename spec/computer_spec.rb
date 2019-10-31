require 'rspec'
require './src/Computer'

describe Computer do
    subject {Computer.new}

    it "should allow the computer to auto generate a move" do
        subject.GenerateMove
        expect(subject.move).not_to eq nil
    end
end