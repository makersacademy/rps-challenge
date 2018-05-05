feature 'Displays winner' do
  scenario 'Winner is displayed' do
    sign_in
    click_on 'play'
    expect(page).to have_content('Salome wins!')
  end
end
