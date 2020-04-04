feature 'Multiplayer' do
  scenario 'Dave and Jim enter names, see Dave vs Jim' do
    visit '/'
    fill_in('player_1_name', with: 'Dave')
    fill_in('player_2_name', with: 'Jim')
    click_button('Start Multi-player!')
    expect(page).to have_content 'Dave vs Jim'
  end
end
