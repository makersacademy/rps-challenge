require 'spec_helper.rb'
  feature 'Name registration ' do
    it 'Can fill in a name' do
      sign_in_and_play
      expect(page).to have_content 'Mado'
    end

    describe Player do
      subject(:fon_player) {described_class.new('Mado',:rock)}

      it 'Can choose a name ' do
        expect(fon_player.name).to eq 'Mado'
      end

      it 'can choose a weapon ' do
        expect(fon_player.player_option).to eq :rock
      end
    end
  end
