feature 'start page form' do

    let(:player_name){ 'Donnie Darko' }

    scenario 'onload there should be a form' do
      visit('/')
      expect(page).to have_css('form')
    end

    scenario 'filling in of form should save players names' do
        visit('/')
        fill_in('player_name', :with => player_name)
        click_button 'Play!'
        expect(page).to have_content(player_name)
      end
  end