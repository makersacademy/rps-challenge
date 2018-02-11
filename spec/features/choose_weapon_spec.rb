feature "Choose weapon" do
  scenario "player chooses rock" do
    submit_name
    click_button 'rock'
    expect(page).to have_content 'Noel: chose rock'
  end
  scenario "player chooses paper" do
    submit_name
    click_button 'paper'
    expect(page).to have_content 'Noel: chose paper'
  end
  scenario "player chooses scissors" do
    submit_name
    click_button 'scissors'
    expect(page).to have_content 'Noel: chose scissors'
  end
end
