feature 'selecting weapon' do
  scenario 'player selects rock' do
    sign_in_and_play('Artemis')
    click_button "Rock"
    expect(page).to have_content('Rock')
  end
end
