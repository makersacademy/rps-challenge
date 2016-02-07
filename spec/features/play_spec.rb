feature 'play the game' do
  let(:game) { double :game}

  scenario 'player can choose "Rock"' do
    sign_in
    choose('choice', option: 'Rock')
    click_button('Submit')
    expect(page).to have_content('Your choice: Rock')
  end

  scenario 'player can choose "Paper"' do
    sign_in
    choose('choice', option: 'Paper')
    click_button('Submit')
    expect(page).to have_content('Your choice: Paper')
  end

  scenario 'player can choose "Scissors"' do
    sign_in
    choose('choice', option: 'Scissors')
    click_button('Submit')
    expect(page).to have_content('Your choice: Scissors')
  end

  scenario 'player sees computer choice' do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in
    choose('choice', option: 'Scissors')
    click_button('Submit')
    expect(page).to have_content('My choice  : Rock')
  end

  scenario 'return you won message when visitor wins' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    choose('choice', option: 'Rock')
    click_button('Submit')
    expect(page).to have_content('You are the winner!')
  end

  scenario 'return I won message when computer wins' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    choose('choice', option: 'Paper')
    click_button('Submit')
    expect(page).to have_content("This one's for me")
  end

  scenario 'return draw message when no winner' do
    allow(Kernel).to receive(:rand).and_return(2)
    sign_in
    choose('choice', option: 'Scissors')
    click_button('Submit')
    expect(page).to have_content("It's a draw!")
  end
end
