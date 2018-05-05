feature 'Displays winner' do
  scenario 'Winner is displayed' do
    visit('/')
    fill_in "player_one", with: 'Salome'
    click_on 'submit'
    click_on 'play'
    expect(page).to have_content('Salome wins!')
  end
end
