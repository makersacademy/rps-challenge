feature 'Players enter their names' do
  scenario 'Submitting names' do
    sign_in_and_submit
    expect(page).to have_content 'Welcome Sheldon!'
  end

  scenario 'Submitting alternate names' do
    visit('/')
    fill_in('player_1_name', with: 'Penny')
    click_button('Submit')
    expect(page).to have_content 'Welcome Penny!'
  end
end
