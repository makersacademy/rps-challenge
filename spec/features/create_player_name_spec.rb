feature 'Create_player_name' do
  scenario 'submitting name' do
    visit '/'
    fill_in('player_name', with: 'Matt')
    click_button('Submit')

    expect(page).to have_content 'Player one: Matt'
  end
end
