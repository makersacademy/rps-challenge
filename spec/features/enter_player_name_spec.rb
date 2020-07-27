
feature 'Player has a name' do
  scenario 'can enter a name and see it on the page' do
    enter_name_and_submit
    expect(page).to have_content('p1')
  end
end
