feature 'Displays winner' do
  scenario 'Winner is displayed' do
    sign_in
    click_on 'rock'
    expect(page).to have_content('Opponent played')
  end
end
