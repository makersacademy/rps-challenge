feature 'making a choice' do
  scenario 'user chooses rock' do
    solo_enter_name_and_play
    click_button("Rock")
    expect(page).to have_content("Rock")
  end
  
  scenario 'user chooses paper' do
    solo_enter_name_and_play
    click_button("Paper")
    expect(page).to have_content("Paper")
  end

  scenario 'user chooses scissors' do
    solo_enter_name_and_play
    click_button("Scissors")
    expect(page).to have_content("Scissors")
  end
end
