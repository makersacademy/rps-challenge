 require 'player'

 describe Player do
  let(:weapon)      { double("Weapon", choices: ['Rock', 'Paper', 'Scissors']) }
  let(:subject)     { described_class.new('abdur') }
   
   it { expect(described_class).to respond_to(:new).with(1).argument }

   describe "#name" do
     it 'gives the name of player' do
       expect(subject.name).to eq('abdur')
     end
   end
   describe "#chose_weapon"
     it 'gives the player\'s choice of weapon' do
      subject.chose_weapon(weapon.choices[0])
      expect(subject.weapon).to eq('Rock')
     end
 end