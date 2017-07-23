feature 'button' do
  scenario 'see the shape options' do
    sign_in_and_play
    expect(page).to have_button 'Play'
  end
end
