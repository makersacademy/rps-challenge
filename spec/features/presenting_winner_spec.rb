feature 'displaying the result' do
  scenario 'the result is displayed' do
    enter_name_and_submit
    click_button("Rock")
    expect(page).to have_content("You are the")
  end
end
