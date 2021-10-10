feature 'Enter name' do
  scenario 'submit name' do
    enter_name_and_submit
    expect(page).to have_content 'Alex'
  end
end
