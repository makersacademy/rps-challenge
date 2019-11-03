feature 'Getting The Result' do
  scenario 'Win' do
    enter_name
    choose_selection('rock')
    expect(page).to have_content('The Computer Chose')
  end

  scenario 'Selecting Paper' do
    enter_name
    choose_selection("paper")
    expect(page).to have_content("You Chose Paper")
  end
end
