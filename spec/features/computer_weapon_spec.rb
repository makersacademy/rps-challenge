feature 'Computer chooses weapon' do
  # subject(:cpu) { Computer.new }
  # let(:cpu) { double(:cpu, weapon: "Scissors") }
  #
  scenario 'computer can select a weapon' do
  #   # cpu = double(:cpu, weapon: "Scissors")
  #   allow(cpu.weapon).to receive(:weapon).and_return("Scissors")
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_with_rock_and_play
    expect(page).to have_content "Computer chooses Scissors"
  end
end
