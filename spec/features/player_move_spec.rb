feature 'player makes move' do
  scenario 'player makes choice and sees their choice in message' do
    chose_paper
    expect(page).to have_content "Nigel, you chose Paper"
  end
end
