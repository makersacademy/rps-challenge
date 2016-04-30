feature 'User' do
  scenario 'can register' do
    visit '/'
    fill_in('name', with: 'Pepito')
    click_button('Submit')
    expect(page).to have_content('Pepito')
  end

  scenario 'can see the choices' do
    visit '/'
    fill_in('name', with: 'Pepito')
    click_button('Submit')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
  end
end
