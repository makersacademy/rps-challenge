describe Computer do
  it "creates the computer's choice" do
    allow(subject).to recieve(:comp_choice).and_return("Rock")
    expect(subject.comp_choice).to eq("Rock")
  end
end
