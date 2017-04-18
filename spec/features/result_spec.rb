feature 'show result' do
  scenario 'display who won the round' do
    sign_in_and_play
    click_button 'Result'
    expect(page).to have_content "wins"
  end
end
