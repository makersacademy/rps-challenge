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

  scenario 'Shows a random computer choice' do
    srand(6)
    visit('/outcome')
    expect(page).to have_content 'Computer chose: Scissors'
  end

  scenario 'Shows a random computer choice' do
    srand(88)
    visit('/outcome')
    expect(page).to have_content 'Computer chose: Rock'
  end

  scenario 'Displays result' do
    srand(6)
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content 'Human wins!'
  end

  scenario 'Displays result' do
    srand(6)
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "It's a draw!"
  end

  scenario 'Displays result' do
    srand(6)
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content "Computer wins!"
  end

  scenario 'Displays result' do
    srand(88)
    sign_in_and_play
    click_button "Scissors"
    expect(page).to have_content "Computer wins!"
  end

  scenario 'Displays result' do
    srand(88)
    sign_in_and_play
    click_button "Paper"
    expect(page).to have_content 'Human wins!'
  end

end
