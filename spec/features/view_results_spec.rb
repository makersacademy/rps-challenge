feature 'view results' do
  scenario 'view the results after choosing weapon' do
    sign_in_and_play('Artemis')
    click_button "Rock"
    expect(page).to have_content('Draw')
  end
end
