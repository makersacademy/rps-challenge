feature 'redirects to correct page' do
  scenario 'redirects to draw page' do
    srand(4)
    visit('/name')
    within('form') do
      fill_in('player_name', with: 'Ollie')
    end
    click_button('Submit')
    click_button('Scissors')
    expect(page).to have_content("It was a draw!")
  end
end

feature 'redirects to correct page' do
  scenario 'redirects to results page' do
    srand(4)
    visit('/name')
    within('form') do
      fill_in('player_name', with: 'Ollie')
    end
    click_button('Submit')
    click_button('Rock')
    expect(page).to have_content("Congratulations")
  end
end