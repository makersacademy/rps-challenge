feature 'Enter name' do
  scenario 'Can see name after entering on a form' do
    fill_in_and_submit
    expect(page).to have_content "Welcome Freddy"
  end

  scenario 'Can see names after entering on form in two player mode' do
    fill_in_and_submit_2p
    expect(page).to have_content "Welcome Freddy and Lucy"
  end
end
