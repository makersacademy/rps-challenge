feature 'play page form' do

<<<<<<< HEAD
 

    scenario 'onload there should be a form' do
      fill_in_name
      choose 'garnet'
      click_button 'Submit'
      expect(page).to have_content(PLAYER_MOVE)
=======
    let(:move){ 'Garnet' }

    scenario 'onload there should be a form' do
      fill_in('move', :with => move)
      click_button 'play!'
      expect(page).to have_content(move)
>>>>>>> 3472f8feccd9780c78b88c9dd21e34c55ec28a47
    end

  end