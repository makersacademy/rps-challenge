feature 'Choose' do
  scenario 'choose rock, paper or scissors' do
    sign_in_and_play
    click_link 'Rock'
    expect(page).to have_content 'You picked Rock'
  end
end
