feature 'Computer chooses option' do
  scenario 'player chooses rock' do
    sign_in
    click_button "Rock"
    expect(page).to have_content "Computer plays"
  end
end