feature 'see winner' do
  scenario "see who wins, based on the rivals' choices" do
    sign_in_and_play
    click_on 'Rock'
    expect(page).to have_content('You win!').or(have_content 'Rivalbot wins!')
  end
end
