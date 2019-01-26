require 'computer'
describe Computer do
  it "has name value 'computer'" do
    expect(subject.name).to eq("computer")
  end

  describe "#choose_move" do
    it "doesn't require arguments" do
      expect {subject.choose_move}.to_not raise_error
    end
    it "chooses move randomly" do
      srand(534)
      subject.choose_move
      expect {
        srand(536)
        subject.choose_move
      }.to change(subject, :move)
    end
  end
end
