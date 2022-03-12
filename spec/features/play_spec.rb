feature 'User will be presented the choices (rock, paper and scissors) ' do
  before do
    visit '/'
    fill_in 'name', with: 'Samuel'
    click_button 'Register'
  end
  scenario 'can see rock, paper or scissors' do
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'can choose rock, paper or scissors' do
    click_button 'Scissors'
    expect(page).to have_content('You chose: Scissors')
  end
end