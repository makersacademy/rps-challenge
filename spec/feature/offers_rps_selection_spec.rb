
feature 'User is presented the choices (rock, paper and scissors)' do
  scenario 'user sees 3 links on the screen' do
    register
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
