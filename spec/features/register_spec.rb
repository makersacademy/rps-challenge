feature 'User' do

  context 'when unregistered' do
    scenario 'can register' do
      visit '/'
      fill_in('name', with: 'Pepito')
      click_button('Submit')
      expect(page).to have_content('Pepito')
    end
    it 'has to enter a name' do
      visit '/'
      click_button('Submit')
      expect(page).to have_content('Please enter a name')
    end
  end

  context 'when registered' do
    scenario 'can see the choices' do
    visit '/'
    fill_in('name', with: 'Pepito')
    click_button('Submit')
    expect(page).to have_content('Rock')
    expect(page).to have_content('Paper')
    expect(page).to have_content('Scissors')
    end


    scenario 'can choose a weapon' do
      visit '/'
      fill_in('name', with: 'Pepito')
      click_button('Submit')
      click_button('ROCK')
      expect(page).to have_content('You chose ROCK!')
    end
  end

end
