feature 'Computer chooses weapon' do
  # subject(:cpu) { Computer.new }
  # let(:cpu) { double(:cpu, weapon: "Scissors") }
  #
  scenario 'computer can select a weapon' do
  #   # cpu = double(:cpu, weapon: "Scissors")
  #   allow(cpu.weapon).to receive(:weapon).and_return("Scissors")
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    visit('/')
    fill_in :player_1_name, with: 'Bob'
    click_button 'Submit'
    fill_in :weapon_choice, with: 'Rock'
    click_button 'Submit'
    click_button 'Fight'
    expect(page).to have_content "Computer chooses Scissors"
  end
end
