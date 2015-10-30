feature 'Player plays' do
  scenario "Player plays 'Rock'" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Norm played Rock'
  end
end

