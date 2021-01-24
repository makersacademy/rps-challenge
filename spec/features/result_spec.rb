feature 'result' do
  scenario 'display winner' do
    srand(67_809)
    visit('/')
    fill_in('name', with: 'Anna')
    click_button('Create Player')
    click_button('Rock')
    expect(page).to have_content "Player has won!"
  end
end
