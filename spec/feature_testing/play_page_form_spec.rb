feature 'play page form' do

    let(:move){ 'Garnet' }

    scenario 'onload there should be a form' do
      fill_in_name
      choose 'garnet'
      click_button 'Submit'
      expect(page).to have_content(move)
    end

  end