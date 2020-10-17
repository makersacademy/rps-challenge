feature 'making a choice' do
  scenario 'user chooses rock' do
    enter_name_and_play
    click_button("Rock")
    expect(page).to have_content("Rock")
  end
  
  scenario 'user chooses paper' do
    enter_name_and_play
    click_button("Paper")
    expect(page).to have_content("Paper")
  end

  scenario 'user chooses scissors' do
    enter_name_and_play
    click_button("Scissors")
    expect(page).to have_content("Scissors")
  end
end
