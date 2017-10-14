feature 'Registration' do
  scenario 'Say welcome on registration' do
    visit '/'
    fill_in :player_name, with: 'Pablo'
    click_button('Save')
    expect(page).to have_content 'Welcome player !'
  end

  scenario 'once registered name is displayed' do
    visit '/'
    fill_in :player_name, with: 'Pablo'
    click_button('Save')
    expect(page).to have_content 'You are now registered as Pablo'
  end

  scenario 'Once registered see the name in light' do
    visit '/'
    fill_in :player_name, with: 'Pablo'
    click_button('Save')
    within('.led-yellow') {expect(page).to have_content('Pablo')}
  end
end
