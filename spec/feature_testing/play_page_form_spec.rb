feature 'play page form' do

    let(:move){ 'Garnet' }

    scenario 'onload there should be a form' do
      fill_in_name
      fill_in('move', :with => move)
      click_button 'play!'
      expect(page).to have_content(move)
    end

  end