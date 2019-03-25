require './lib/computer.rb'

feature 'Random move' do
  scenario 'displayes the randomly chosen move by the game' do
    computer = Computer.new
    sign_in_and_play
    click_button 'Lets Play'
    click_button 'Confirm'
    allow(Kernel).to receive(:rand).and_return(1)
    expect(computer.random_move).to eq 'Paper'
  end
end
