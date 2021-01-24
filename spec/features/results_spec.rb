feature 'Game results' do
  scenario 'the page returns an OK status code' do
    sign_in_and_play
    click_button 'Rock'
    expect(page.status_code).to eq 200
  end

  scenario 'player chooses rock while AI chooses rock' do
    srand(2)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('The AI has chosen Rock')
  end

  scenario 'player chooses paper while AI chooses paper' do
    srand(1)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('The AI has chosen Paper')
  end

  scenario 'player chooses scissors while AI chooses scissors' do
    srand(3)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('The AI has chosen Scissors')
  end

  scenario 'a draw' do
    srand(1)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content("It's a Draw!")
  end

  scenario 'player chooses paper and wins' do
    srand(2)
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content("The winner is... Paper!")
  end

  scenario 'player chooses rock and wins' do
    srand(3)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("The winner is... Rock!")
  end

  scenario 'player chooses Scissors and wins' do
    srand(1)
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content("The winner is... Scissors!")
    expect(page).to have_content("Richard is the winner")
  end

  scenario 'the computer wins' do
    srand(1)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content("The Computer is the winner")
  end
end
