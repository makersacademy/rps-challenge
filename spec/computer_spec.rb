describe Computer do
  subject(:computer) {described_class.new}
  it{ is_expected.to respond_to(:computer_choice)}
end