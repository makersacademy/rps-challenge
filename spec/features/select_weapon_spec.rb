feature 'select weapon' do
  scenario 'user clicks on "ROCK" button' do
    sign_in_and_play
    click_on 'ROCK'
    expect(page).to have_content "You won!"
  end
end
