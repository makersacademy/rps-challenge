feature 'Entering names on the Index page' do
    scenario 'get name' do
        visit('/')
        fill_in :player_1_name, with: 'David'
        click_button 'Submit'
    end
  end