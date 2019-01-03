feature 'Enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content('Mario vs Luigi !')
  end
end

feature 'User options' do
  scenario 'user is presented with the three options' do
    sign_in_and_play
    expect(page).to have_content("Mario, choose from these different options:\nrock paper scissors")
    expect(page).to have_content("Luigi, choose from these different options:\nrock paper scissors")
  end

  scenario 'each user chooses one option' do
    sign_in_and_play
    page.choose('rock_1')
    page.choose('paper_2')
    click_button 'Submit'
    expect(page).to have_content('Mario chose rock. Luigi chose paper.')
  end
end

feature 'Playing the game' do
  scenario 'Mario chooses rock and Luigi chooses rock' do
    sign_in_and_play
    page.choose('rock_1')
    page.choose('rock_2')
    click_button 'Submit'
    click_button 'See result!'
    expect(page).to have_content('It is a draw!')
  end
  scenario 'Mario chooses paper and Luigi chooses scissors' do
    sign_in_and_play
    page.choose('paper_1')
    page.choose('scissors_2')
    click_button 'Submit'
    click_button 'See result!'
    expect(page).to have_content('Luigi wins!')
  end
  scenario 'Mario chooses rock and Luigi chooses scissors' do
    sign_in_and_play
    page.choose('rock_1')
    page.choose('scissors_2')
    click_button 'Submit'
    click_button 'See result!'
    expect(page).to have_content('Mario wins!')
  end
end
