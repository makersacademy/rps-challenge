feature 'Homepage' do
  scenario 'user enters name and it is displayed with greeting' do
    enter_name_and_play
    expect(page).to have_content("Welcome Bob!")
  end

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
  
end
