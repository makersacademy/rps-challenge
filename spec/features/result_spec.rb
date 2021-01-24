feature 'result' do
  scenario 'display winner' do
    srand(67_809)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content "Player has won!"
  end
end
