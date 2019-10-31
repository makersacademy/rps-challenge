require 'rspec'
require './src/Computer'

describe Computer do
    subject {Computer.new}

    it "should allow the computer to auto generate a move" do
        expect(subject.Move).not_to eq nil
    end
end