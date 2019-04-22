feature 'decisions are shown' do
  scenario 'when rock is chosen' do
    sign_in_and_submit
    click_button "I'm Ready!"
    click_button "Rock"
    expect(page).to have_content "You chose: Rock."
  end
end
