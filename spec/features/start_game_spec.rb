feature 'starting the game' do\
  scenario 'player chose Rock option and computer Rock' do
    allow_any_instance_of(Player).to receive(:random).and_return('Rock')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
    expect(page).to have_content 'Opponent chose Rock!'
    expect(page).to have_content 'This is a tie!'
  end

  scenario 'player chose Rock option and computer Paper' do
    allow_any_instance_of(Player).to receive(:random).and_return('Paper')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
    expect(page).to have_content 'Opponent chose Paper!'
    expect(page).to have_content 'You loose!'
  end

  scenario 'player chose Rock option and computer Scissors' do
    allow_any_instance_of(Player).to receive(:random).and_return('Scissors')
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
    expect(page).to have_content 'Opponent chose Scissors!'
    expect(page).to have_content 'You win!'
  end

  scenario 'player chose Paper option and computer Rock' do
    allow_any_instance_of(Player).to receive(:random).and_return('Rock')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper!'
    expect(page).to have_content 'Opponent chose Rock!'
   expect(page).to have_content 'You win!'
  end

  scenario 'player chose Paper option and computer Paper' do
    allow_any_instance_of(Player).to receive(:random).and_return('Paper')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper!'
    expect(page).to have_content 'Opponent chose Paper!'
    expect(page).to have_content 'This is a tie!'
  end

  scenario 'player chose Paper option and computer Scissors' do
    allow_any_instance_of(Player).to receive(:random).and_return('Scissors')
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You chose Paper!'
    expect(page).to have_content 'Opponent chose Scissors!'
   expect(page).to have_content 'You loose!'
  end

  scenario 'player chose Scissors option and computer Rock' do
    allow_any_instance_of(Player).to receive(:random).and_return('Rock')
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors!'
    expect(page).to have_content 'Opponent chose Rock!'
   expect(page).to have_content 'You loose!'
  end

  scenario 'player chose Scissors option and computer Paper' do
    allow_any_instance_of(Player).to receive(:random).and_return('Paper')
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors!'
    expect(page).to have_content 'Opponent chose Paper!'
   expect(page).to have_content 'You win!'
  end

  scenario 'player chose Scissors option and computer Scissors' do
    allow_any_instance_of(Player).to receive(:random).and_return('Scissors')
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You chose Scissors!'
    expect(page).to have_content 'Opponent chose Scissors!'
   expect(page).to have_content 'This is a tie!'
  end
end
