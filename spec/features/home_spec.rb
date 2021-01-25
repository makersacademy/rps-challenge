feature '/home' do

  context 'when first visiting website' do

    scenario 'displays greeting' do
      visit('/')
      expect(page).to have_content('Hi, welcome to Rock, Paper, Sissors!')
    end

    scenario 'user can enter name'do
      visit('/')
      fill_in('name', with: 'Hamish')
      click_button('Go!')
      expect(page).to have_content('Welcome Hamish!')
    end

  end

end
