feature 'names' do
  scenario 'will see your name after entering them' do
    choose_paper
    expect(page).to have_content "Benjamin, you chose the weapon Paper"
  end
end
