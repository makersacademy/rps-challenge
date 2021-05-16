require 'spec_helper'
require 'machine_choice'

describe MachineChoice do
    subject(:machine_choice) { described_class.new }

    describe '#machine_choice' do
        it 'the machine selects an option randomly' do
            expect(MachineChoice::CHOICES).to include(machine_choice.machine_choice)
        end
    end
    
end
