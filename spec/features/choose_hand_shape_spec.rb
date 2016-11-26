feature 'Choosing hand shape' do

  scenario 'have the option to chose the "rock" hand shape' do
    sign_in_and_play
    expect(page).to have_button 'ROCK!'
  end

  scenario 'have the option to chose the "paper" hand shape' do
    sign_in_and_play
    expect(page).to have_button 'PAPER!'
  end

  scenario 'have the option to chose the "scissor" hand shape' do
    sign_in_and_play
    expect(page).to have_button 'SCISSOR!'
  end

end
