feature 'Player chooses Paper' do
  scenario 'Paper button is clicked' do
    sign_in
    click_button 'Paper'
    expect(page).to have_content "Paper"
  end
end 
