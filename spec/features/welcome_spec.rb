feature 'Home page' do
  scenario 'Submit name' do
    fillin_and_submit
    expect(page).to have_content('Welcome abdur')
  end
  scenario 'gives options to select' do
    fillin_and_submit
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

end