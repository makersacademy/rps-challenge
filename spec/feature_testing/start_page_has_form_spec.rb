feature 'start page form' do

    scenario 'onload there should be a form' do
      visit('/')
      expect(page).to have_css('form')
    end

    scenario 'filling in of form should save players names' do
        fill_in_name
        expect(page).to have_content(PLAYER_NAME)
      end
  end