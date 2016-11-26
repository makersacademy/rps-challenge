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
    expect(page).to have_button 'SCISSOR!'
  end

end
