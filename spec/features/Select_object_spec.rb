feature "select objet"
  scenario 'should be able to select an object from the ones presented' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You are Rock'
  end
