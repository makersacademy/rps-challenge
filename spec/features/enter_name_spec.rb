feature 'Entering names on the Index page' do
    scenario 'get name' do
        visit('/')
        fill_in :player_name, with: 'David'
        click_button 'submit'
    end
  end