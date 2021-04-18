feature 'get to results page' do
  scenario 'winner declared' do
    sign_in_and_play
    page.choose('paper')
    click_button ('play')
    expect(page).to have_content('The winner is...')
  end
end
