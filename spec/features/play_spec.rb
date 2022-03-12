feature 'User will be presented the choices (rock, paper and scissors) ' do
  scenario 'can see rock, paper or scissors' do
    visit '/'
    fill_in 'name', with: 'Samuel'
    click_button 'Register'
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end