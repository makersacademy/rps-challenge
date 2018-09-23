feature 'choosing a weapon' do

  scenario 'user can select "rock" button' do
    enter_name_and_play
    expect(page).to have_button("Rock")
  end

  scenario 'user can select "paper" button' do
    enter_name_and_play
    expect(page).to have_button("Paper")
  end

  scenario 'user can select "scissors" button' do
    enter_name_and_play
    expect(page).to have_button("Scissors")
  end

  scenario 'user selects a weapon' do
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content("Your choice of weapon: rock")
  end

end
