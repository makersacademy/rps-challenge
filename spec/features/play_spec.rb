feature 'States the players name' do
  scenario 'After entering name on homepage' do
    enter_name_and_submit
    expect(page).to have_content("Tom")
  end
end
