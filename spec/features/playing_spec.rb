feature 'players wants to play RPS' do
  scenario 'player plays RPS' do
    sign_in
    click_button "Play RPS"
    expect(page).to have_content "Simona, Select your choice"
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissor")
  end
end
