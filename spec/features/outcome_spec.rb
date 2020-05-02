feature 'Outcome of game' do
  scenario 'Shows user choice when Rock is chosen' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'You chose: Rock'
  end

  scenario 'Shows user choice when Scissors are chosen' do
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content 'You chose: Scissors'
  end

  scenario 'Shows user choice when Paper is chosen' do
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'You chose: Paper'
  end

end
