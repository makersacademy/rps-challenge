feature 'Player chooses paper' do
  scenario 'Player can choose paper' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end

  scenario 'Player chooses paper and wins' do
    srand(67810)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Matt wins!'
  end

  scenario 'Player chooses paper and draws' do
    srand(67814)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Matt & AI drew!'
  end

  scenario 'Player chooses scissors and loses' do
    srand(67809)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Matt lost to an AI!'
  end
end
