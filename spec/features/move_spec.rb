feature 'Select Move' do
  scenario 'player can select a move and see it displayed' do
    sign_in
    click_button ('Rock')
    expect(page).to have_content ("Rock")
  end
end
