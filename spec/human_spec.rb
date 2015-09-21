require 'human'

  describe Human do 

    it { is_expected.to respond_to(:choose_option).with(1).argument }

    it 'should be able to choose an option' do 
      subject.choose_option(:rock)
      expect(subject.choice).to eq(:rock)
    end

    it 'should not be able to choose anything other than r, p or s' do 
      expect{ subject.choose_option(:football) }.to raise_error 'That is not a valid option'
    end

  end

