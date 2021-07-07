feature 'Choose among Rock, Paper and Scissors' do

  scenario 'it chooses Rock' do
    signin_and_play
    click_button 'Rock'
    expect(page).to have_content 'Adrien you have chosen Rock!'
  end

  scenario 'it chooses Paper' do
    signin_and_play
    click_button 'Paper'
    expect(page).to have_content 'Adrien you have chosen Paper!'
  end

  scenario 'it chooses Scissors' do
    signin_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Adrien you have chosen Scissors!'
  end
end
