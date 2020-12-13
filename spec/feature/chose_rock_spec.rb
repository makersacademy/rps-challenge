feature 'Picking option' do
  scenario 'picked rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_text 'hey Aman you chose rock'
  end
end
