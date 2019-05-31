feature 'Testing landing page' do
  scenario 'can see title' do
    visit('/')

    expect(page).to have_content 'Rock Paper Scissors Showdown'
  end

  scenario 'can see a prompt to enter name' do
    visit('/')

    expect(page).to have_content 'Enter name:'
  end

  scenario 'can enter a name' do
    visit('/')

    expect(page).to have_field 'enter-name'
  end

  scenario 'can fill in name' do
    visit('/')

    fill_in('enter-name', with: 'Jamiroquai')
  end

  scenario 'can submit name' do
    visit('/')
    fill_in('enter-name', with: 'Jamiroquai')

    click_button('Submit')
  end

  scenario 'not be asked to enter name anymore' do
    enter_name_submit

    expect(page).to_not have_field 'enter-name'
  end
end

feature 'Testing rock paper scissors game page' do
  scenario 'can see title' do
    enter_name_submit

    expect(page).to have_content 'Rock Paper Scissors Showdown'
  end

  scenario 'can prompt the user to pick a play' do
    enter_name_submit

    expect(page).to have_content ', the time has come to choose your weapon:'
  end

  scenario 'can see the previously entered name' do
    enter_name_submit

    expect(page).to have_content 'Jamiroquai, the time has come to choose your weapon:'
  end

  scenario 'can see option to pick rock' do
    enter_name_submit

    choose 'Rock'
  end

  scenario 'can see option to pick paper' do
    enter_name_submit

    choose 'Paper'
  end

  scenario 'can see option to pick scissors' do
    enter_name_submit

    choose 'scissors'
  end
end

feature 'winner/loser pager' do
  scenario 'click on paper takes you to winner page which shows player move' do
    enter_name_submit
    choose 'rock'

    click_button 'Confirm weapon!'

    expect(page).to have_content('Jamiroquai played rock!')
  end

  scenario 'click on paper takes you to winner page which shows player move' do
    enter_name_submit
    choose 'paper'

    click_button 'Confirm weapon!'

    expect(page).to have_content('Jamiroquai played paper!')
  end

  scenario 'click on option takes you to winner page which shows computer move' do
    enter_name_submit
    choose 'scissors'

    click_button 'Confirm weapon!'

    expect(page).to have_content('Computer played ')
  end

  scenario 'click on option takes you to winner page which shows who won' do
    enter_name_submit
    choose 'paper'

    click_button 'Confirm weapon!'

    expect(page).to have_content('The winner is ')
  end
end
