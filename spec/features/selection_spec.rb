feature 'Selecting' do
  scenario 'Rock' do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Aga: rock"
  end

  scenario 'Paper' do
    sign_in
    click_button "Paper"
    expect(page).to have_content "Aga: paper"
  end

  scenario 'Scissors' do
    sign_in
    click_button "Scissors"
    expect(page).to have_content "Aga: scissors"
  end
end
