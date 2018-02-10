feature "Choose weapon" do
  scenario "player chooses rock" do
    submit_name
    click_button 'Rock'
    expect(page).to have_content 'Noel: chose Rock'
  end
  scenario "player chooses paper" do
    submit_name
    click_button 'Paper'
    expect(page).to have_content 'Noel: chose Paper'
  end
  scenario "player chooses scissors" do
    submit_name
    click_button 'Scissors'
    expect(page).to have_content 'Noel: chose Scissors'
  end
end
