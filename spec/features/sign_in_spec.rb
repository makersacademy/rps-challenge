feature 'sign_in form' do
  scenario 'player can sign up to play and have name displayed' do
    visit '/'
    fill_in :player, with: 'Daniel'
    click_button 'Play!'
    expect(page).to have_content 'Daniel vs computer!'
  end
end
