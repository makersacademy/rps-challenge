feature 'Enter name' do
  scenario 'Can see name after entering on a form' do
    fill_in_and_submit
    expect(page).to have_content "Welcome Freddy"
  end
end
