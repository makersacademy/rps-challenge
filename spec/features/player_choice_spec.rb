feature 'Player selects Rock | Paper | Scissors' do
  scenario 'user selects Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'user selects Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content 'You chose Paper'
  end

  scenario 'user selects Scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content 'You chose Scissors'
  end
end




  