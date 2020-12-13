feature 'displaying the result' do
  scenario 'the result is displayed' do
    enter_name_and_submit
    choose :rock
    click_button("GO!")
    expect(page).to have_content("You are the WINNER!")
  end
end
