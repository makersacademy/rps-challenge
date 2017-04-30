feature 'result' do
  scenario 'player has chosen rock, paper, or scissors' do
    sign_in
    choose('rock')
    click_on('Submit')
    expect(page).to have_content("won")
  end
end
