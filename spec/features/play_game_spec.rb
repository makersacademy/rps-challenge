feature 'play rock/paper/scissors' do
  scenario 'select rock' do
    sign_in
    click_button "Rock"
    expect(page).to have_text("chose rock")
  end
  scenario 'select paper' do
    sign_in
    click_button "Paper"
    expect(page).to have_text("chose paper")
  end
  scenario 'select scissors' do
    sign_in
    click_button "Scissors"
    expect(page).to have_text("chose scissors")
  end
end
