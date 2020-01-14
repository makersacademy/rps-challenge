feature 'Opponent move' do
  scenario 'Rock' do
    sign_in_and_play
    choose 'Rock'
    srand(1000)
    click_button 'Submit'
    expect(page).to have_content 'Your opponent played Rock'
  end

  scenario 'Paper' do
    sign_in_and_play
    choose 'Rock'
    srand(1001)
    click_button 'Submit'
    expect(page).to have_content 'Your opponent played Paper'
  end

  scenario 'Scissors' do
    sign_in_and_play
    choose 'Rock'
    srand(1002)
    click_button 'Submit'
    expect(page).to have_content 'Your opponent played Scissors'
  end
end
