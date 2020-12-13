feature 'displaying the result' do
  scenario 'displays players weapon' do
    enter_name_and_submit
    choose :rock
    click_button("GO!")
    expect(page).to have_content("Rubber Duck plays with rock")
  end

  scenario 'displays computers weapon' do
    enter_name_and_submit
    choose :rock
    click_button("GO!")
    expect(page).to have_content("Computer plays with")
  end
end
