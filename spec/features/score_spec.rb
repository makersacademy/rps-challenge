feature 'RPS' do
  scenario 'displays score' do
    sign_in_and_play
    click_on('Submit')
    expect(page).to have_content('Chloe: 0')
  end
end
