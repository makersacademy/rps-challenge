feature 'Declaring the winner' do

  before do
    allow(Kernel).to receive(:rand).and_return(2)
  end

  scenario 'A player has 5 points' do
    sign_in_and_play
    play_5_rounds
    expect(page).to have_content 'Ed is the champion!'
    expect(page).to have_button 'Play a new game'
  end
end
