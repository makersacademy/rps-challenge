feature 'Redirects to new round' do
  scenario 'play again after first round' do
    sign_in_and_play
    first_round
    click_button "OK"
    expect(page).to have_content 'Bill - make your choice'
  end
end
