feature 'Able to choose between rock, paper, scissors' do

  scenario 'displays rock as a choice' do
    enter_name_and_play
    expect(page).to have_selector("input[type=radio][value=rock]")
  end

  scenario 'displays paper as a choice' do
    enter_name_and_play
    expect(page).to have_selector("input[type=radio][value=paper]")
  end

  scenario 'displays scissors as a choice' do
    enter_name_and_play
    expect(page).to have_selector("input[type=radio][value=scissors]")
  end

  scenario 'Able to choose rock and confirms the choice' do
    enter_name_and_play
    choose('rock')
    click_button 'Submit'
    expect(page).to have_content 'You have chosen Rock'
  end

  scenario 'Able to choose paper and confirms the choice' do
    enter_name_and_play
    choose('paper')
    click_button 'Submit'
    expect(page).to have_content 'You have chosen Paper'
  end

  scenario 'Able to choose scissors and confirms the choice' do
    enter_name_and_play
    choose('scissors')
    click_button 'Submit'
    expect(page).to have_content 'You have chosen Scissors'
  end

end
