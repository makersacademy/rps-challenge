feature 'Emoji Options: ' do
  scenario '1. Player selects rock, paper or scissors emoji' do
    visit '/'
    fill_in :player_name, with: 'Neville'
    click_button 'Submit'
    find_button('✊').click
  end
end
