feature 'Infrastructure test' do
  scenario 'Loads page with Hello!' do
    visit('/')
    expect(page).to have_content('Hello')
  end
end

feature 'Input field for name' do
  scenario 'Be able to register name' do
    enter_name_and_submit
    expect(page).to have_content('Dave')
  end
end

feature 'Should have buttons to play a game' do 
  scenario 'Be able to select rock' do
    enter_name_and_submit_again
    expect(page).to have_button("Rock")
  end

  scenario 'Be able to select paper' do
    enter_name_and_submit_again
    expect(page).to have_button("Paper")
  end

  scenario 'Be able to select scissors' do
    enter_name_and_submit_again
    expect(page).to have_button("Scissors")
  end
end

feature 'Should let the player know the result of the game' do
  scenario 'Should let the player know they have won' do
    srand(3) # dont know how to use seed properly 
    enter_rock
    expect(page).to have_content('Win')
  end

  scenario 'Should let the player know they have Lost' do
    srand(1) # dont know how to use seed properly 
    enter_rock
    expect(page).to have_content('Lose')
  end

  scenario 'Should let the player know it was a draw' do
    srand(2) # dont know how to use seed properly 
    enter_rock
    expect(page).to have_content('draw')
  end
end

