feature 'Displays a welcome page' do
  scenario 'can submit game options' do
    visit '/single-player'
    expect(page).to have_button 'Submit'
  end
end
