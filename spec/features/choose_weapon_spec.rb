feature "Choose weapon" do
  scenario "player chooses rock" do
    submit_name
    click_button 'Rock'
    expect(page).to have_content 'Noel: chose Rock'
  end
end
