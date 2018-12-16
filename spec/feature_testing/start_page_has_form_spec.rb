feature 'start page form' do

<<<<<<< HEAD
=======


>>>>>>> 3472f8feccd9780c78b88c9dd21e34c55ec28a47
    scenario 'onload there should be a form' do
      visit('/')
      expect(page).to have_css('form')
    end

    scenario 'filling in of form should save players names' do
        fill_in_name
<<<<<<< HEAD
        expect(page).to have_content(PLAYER_NAME)
=======
        expect(page).to have_content(player_name)
>>>>>>> 3472f8feccd9780c78b88c9dd21e34c55ec28a47
      end
  end