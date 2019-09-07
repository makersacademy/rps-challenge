feature "selecting a move" do
  scenario "selecting rock" do
    srand(1)
    sign_in()
    click_button 'Rock'
    expect(page).to have_content 'LOSER!'
  end
end
