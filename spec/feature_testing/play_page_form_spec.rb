feature 'play page form' do

<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> 5a8d26292e52760138616ee7f15381416ec6d665
 

    scenario 'onload there should be a form' do
      fill_in_name
      choose 'garnet'
      click_button 'Submit'
      expect(page).to have_content(PLAYER_MOVE)
<<<<<<< HEAD
=======
=======
    let(:move){ 'Garnet' }

    scenario 'onload there should be a form' do
      fill_in('move', :with => move)
      click_button 'play!'
      expect(page).to have_content(move)
>>>>>>> 3472f8feccd9780c78b88c9dd21e34c55ec28a47
>>>>>>> 5a8d26292e52760138616ee7f15381416ec6d665
    end

  end