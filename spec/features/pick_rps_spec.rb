feature 'Pick Rock/Paper/Scissors' do
  scenario 'pick rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Bella picked rock!'
  end
  scenario 'pick paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Bella picked paper!'
  end 
  scenario 'pick scissors' do
      sign_in_and_play
      click_button 'Scissors'
      expect(page).to have_content 'Bella picked scissors!'
  end

end
