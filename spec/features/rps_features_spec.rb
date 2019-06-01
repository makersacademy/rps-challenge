feature 'Testing landing page' do
  scenario 'can see title' do
    visit('/')

    expect(page).to have_content 'Rock Paper Scissors Showdown'
  end

  scenario 'can see a prompt to enter name' do
    visit('/')

    expect(page).to have_content 'Player one:'
  end

  scenario 'can see a prompt to enter name' do
    visit('/')

    expect(page).to have_content 'Player two:'
  end

  scenario 'can enter a name' do
    visit('/')

    expect(page).to have_field 'enter-name-one'
  end

  scenario 'can fill in name' do
    visit('/')

    fill_in('enter-name-one', with: 'Jamiroquai')
  end

  scenario 'can enter a second name' do
    visit('/')

    expect(page).to have_field 'enter-name-two'
  end

  scenario 'can fill in a second name' do
    visit('/')

    fill_in('enter-name-two', with: 'Sting')
  end

  scenario 'can submit name' do
    visit('/')
    fill_in('enter-name-one', with: 'Jamiroquai')
    fill_in('enter-name-two', with: 'Sting')

    click_button('Submit')
  end

  scenario 'not be asked to enter first name anymore' do
    enter_name_submit

    expect(page).to_not have_field 'enter-name-one'
  end

  scenario 'not be asked to enter second name anymore' do
    enter_name_submit

    expect(page).to_not have_field 'enter-name-two'
  end
end

feature 'Testing rock paper scissors game page' do
  scenario 'can see title' do
    enter_name_submit

    expect(page).to have_content 'Rock Paper Scissors Showdown'
  end

  scenario 'can see the previously entered name' do
    enter_name_submit

    expect(page).to have_content 'Jamiroquai, the time has come to choose your weapon:'
  end

  scenario 'can see the previously entered name' do
    enter_name_submit

    expect(page).to have_content 'Sting, the time has come to choose your weapon:'
  end

  scenario 'can see option to pick rock' do
    enter_name_submit

    within 'div .first' do
      choose 'Rock'
    end
  end

  scenario 'can see option to pick paper' do
    enter_name_submit
    within 'div .first' do
      choose 'Paper'
    end
  end

  scenario 'can see second option to pick scissors' do
    enter_name_submit
    within 'div .first' do
      choose 'Scissors'
    end
  end

  scenario 'can see second option to pick rock' do
    enter_name_submit

    within 'div .second' do
      choose 'Rock'
    end
  end

  scenario 'can see second option to pick paper' do
    enter_name_submit
    within 'div .second' do
      choose 'Paper'
    end
  end

  scenario 'can see option to pick scissors' do
    enter_name_submit
    within 'div .second' do
      choose 'Scissors'
    end
  end
end

feature 'winner/loser pager' do
  scenario 'click on paper takes you to winner page which shows player move' do
    enter_name_submit

    within 'div .first' do
      choose 'rock'
    end

    click_button 'Confirm weapon!'

    expect(page).to have_content('Jamiroquai played rock!')
  end

  scenario 'click on paper takes you to winner page which shows player move' do
    enter_name_submit

    within 'div .first' do
      choose 'paper'
    end

    click_button 'Confirm weapon!'

    expect(page).to have_content('Jamiroquai played paper!')
  end

  scenario 'click on option takes you to winner page which shows second player move' do
    enter_name_submit

    within 'div .second' do
      choose 'paper'
    end

    click_button 'Confirm weapon!'

    expect(page).to have_content('Sting played paper!')
  end
end
