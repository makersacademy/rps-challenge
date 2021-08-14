feature 'allow user to select rock, paper, or scissors' do
  scenario 'user selects rock' do
    enter_name
    choose('rock')
    click_button('Submit')
    expect(page).to have_content("Ian, you chose Rock!")
  end

  scenario 'user selects paper' do
    enter_name
    choose('paper')
    click_button('Submit')
    expect(page).to have_content("Ian, you chose Paper!")
  end

  scenario 'user selects scissors' do
    enter_name
    choose('scissors')
    click_button('Submit')
    expect(page).to have_content("Ian, you chose Scissors!")
  end
end