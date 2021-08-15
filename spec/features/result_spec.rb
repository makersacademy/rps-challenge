feature 'result' do
  scenario 'lets player know he won' do
    visit('/result')
    sign_in_and_play

    click_button 'rock'

    expect(page).to have_content 'You win Gandalf!'
  end

  scenario 'lets player know he won' do
    visit('/result')
    sign_in_and_play

    click_button 'paper'

    expect(page).to have_content 'You loose Gandalf!'
  end

  scenario 'lets player know its a draw' do
    visit('/result')
    sign_in_and_play

    click_button 'scissors'

    expect(page).to have_content 'Its a draw Gandalf!'
  end

  scenario 'play again button' do
    visit('/result')

    # click_button 'play again'
  end
end
