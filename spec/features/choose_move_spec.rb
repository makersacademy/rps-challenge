feature 'Choose move' do
  
  scenario 'Choosing player 1 move' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    expect(page).to have_content 'Choose Rock, Paper or Scissors'
  end

  scenario 'Confirm player 1 choice - rock' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    choose 'rock'
    click_button 'Submit your choice'
    expect(page).to have_content 'Mark chose Rock'
  end

  scenario 'Confirm player 1 choice - paper' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    choose 'paper'
    click_button 'Submit your choice'
    expect(page).to have_content 'Mark chose Paper'
  end

  scenario 'Confirm player 1 choice - scissor' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    choose 'scissors'
    click_button 'Submit your choice'
    expect(page).to have_content 'Mark chose Scissors'
  end

  scenario 'Confirm computer choice' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    choose 'rock'
    click_button 'Submit your choice'
    expect(page).to have_content 'Computer chose'
  end
end
