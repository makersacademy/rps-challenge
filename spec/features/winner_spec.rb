feature 'Declaring the winner' do

  before do
    allow(Kernel).to receive(:rand).and_return(2)
  end

  scenario '5 points wins' do
    sign_in_and_play
    play_5_rounds
    expect(page).to have_content 'Ed is the champion!'
    expect(page).to have_button 'Play a new game'
  end

  scenario '5 points wins in multiplayer' do
    multi_play_sign_in
    play_5_multiplayer_rounds
    expect(page).to have_content 'Hayley is the champion!'
  end

end
