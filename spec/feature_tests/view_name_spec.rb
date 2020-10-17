feature 'Visible names' do
  scenario 'Player can enter name in a form and see it on screen' do
    visit '/'
    fill_in('player1_name', with: 'Isaac')
    click_button('Submit')
    expect(page).to have_content 'Isaac'
  end
end
