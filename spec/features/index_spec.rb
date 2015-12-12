describe 'User Stories - Index' do
  feature 'Name form' do
    scenario 'user enters name' do
      visit('/')
      fill_in :player_1_name, with: 'Emma'
      click_button 'Submit'
    end
  end
end
