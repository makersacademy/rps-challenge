feature 'view results' do
  scenario 'view the resuslts after choosing weapon' do
    sign_in_and_play('Artemis')
    click_button "Rock"
    expect(page).to have_content('Rock wins Scissors')
  end
end
