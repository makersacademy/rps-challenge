feature 'play again' do

  scenario 'player plays again after rock' do
    sign_in
    click_button 'Rock'
    click_button 'Play again!'
    expect(page).to have_content 'Steph! Rock, paper, scissors!'
  end

  scenario 'player plays again after paper' do
    sign_in
    click_button 'Paper'
    click_button 'Play again!'
    expect(page).to have_content 'Steph! Rock, paper, scissors!'
  end

  scenario 'player plays again after scissors' do
    sign_in
    click_button 'Scissors'
    click_button 'Play again!'
    expect(page).to have_content 'Steph! Rock, paper, scissors!'
  end

end
