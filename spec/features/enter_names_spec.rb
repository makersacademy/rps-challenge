feature 'Players enter their names' do
  scenario 'Submitting names' do
    visit('/')
    fill_in('player_1_name', with: 'Sheldon')
    fill_in('player_2_name', with: 'Penny')
    click_button('Submit')
    expect(page).to have_content 'Sheldon vs. Penny'
  end

  scenario 'Submitting alternate names' do
    visit('/')
    fill_in('player_1_name', with: 'Frank')
    fill_in('player_2_name', with: 'Borris')
    click_button('Submit')
    expect(page).to have_content 'Frank vs. Borris'
  end
end
