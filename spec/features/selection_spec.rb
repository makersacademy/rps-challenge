feature 'Selecting' do
  scenario 'Rock' do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Rock"
  end

  scenario 'Paper' do
    sign_in
    click_button "Paper"
    expect(page).to have_content "Paper"
  end

end
