feature 'Emoji Options: ' do
  scenario '2. Player selects rock, paper of scissors emoji' do
    visit '/'
    fill_in :player_name, with: 'Neville'
    click_button 'Submit'
    find_button('👊').click
  end
end
