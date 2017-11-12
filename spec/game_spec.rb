require 'game'

describe Game do


  let (:obj1) { double(:obj1) }
  let (:obj2) { double(:obj2) }
  # let(:fake_player2) { double(:fake_player, choice: [{ option: 1, item: :Rock }])}
  # let(:fake_player1) { double(:fake_player, choice: [{ option: 3, item: :Paper }])}

  let(:game) {described_class.new(fake_player1,fake_player2)}

  let(:fake_player1) { double(:fake_player1, receive_choice: true) }
  let(:fake_player2) { double(:fake_player2, receive_choice: true) }
  let(:fake_class) { double(:fake_class, new: fake_player2) }
  let(:fake_class) { double(:fake_class, new: fake_player1) }

  context '#create' do
    it 'Creates a new instance of Game' do
      expect(Game.create(obj1,obj2)).to be_an_instance_of(Game)
    end
  end

  context '#instance' do
    it 'Return an instance of Game' do
      expect(Game.instance).to be_an_instance_of(Game)
    end
  end

  context '#set_choice' do
    it "Sets players's choice" do
      expect(game.set_choice(fake_player1,0)).to eq(true)
    end
  end

  context '#reset' do
    it 'Return an instance of Game' do
      expect(fake_player1).to receive(:receive_choice)
      expect(fake_player2).to receive(:receive_choice)
      expect(game.reset).to eq false
    end
  end

  # context '#decider' do
  #   it '' do
  #     # allow(fake_player1).to receive(:choice).and_return { 3 }
  #     # allow(fake_player2).to receive(:choice).and_return { 1 }
  #     # expect(fake_player1).to receive(:receive_choice)
  #     # expect(fake_player2).to receive(:receive_choice)
  #     expect(game.decider).to eq(fake_player2)
  #   end
  # end



end
