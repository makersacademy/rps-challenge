feature 'shows available choices' do
  scenario 'A player can choose from the available choices' do
    sign_in_and_submit
    expect(page).to have_button 'Scissors'
  end
end
