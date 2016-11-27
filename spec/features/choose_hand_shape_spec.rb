feature 'Choosing hand shape' do

  scenario 'display the "rock" hand shape as an option' do
    sign_in_and_play
    expect(page).to have_button 'ROCK!'
  end

  scenario 'display the "paper" hand shape as an option' do
    sign_in_and_play
    expect(page).to have_button 'PAPER!'
  end

  scenario 'display the "scissor" hand shape as an option' do
    sign_in_and_play
    expect(page).to have_button 'SCISSORS!'
  end

  scenario 'the player can choose an option and be taken to a results page' do
    sign_in_and_play
    click_button 'ROCK!'
    expect(current_path).to eq '/result'
  end

end
