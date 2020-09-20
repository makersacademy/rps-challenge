require 'choices'


describe Choices do
    
    describe '#get choices' do
        it 'get choice method should be able to respond' do
            choices = Choices.new
            expect(choices).to respond_to(:get_choices)
        end
    end
end