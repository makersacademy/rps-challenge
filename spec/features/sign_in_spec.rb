feature 'sign in' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'Maru'
    click_button 'Play'
    expect(page).to have_content 'Maru vs Computer'
  end

end
