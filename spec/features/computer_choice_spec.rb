feature "Computer chooses weapon" do
  scenario "computer chooses a weapon" do
    submit_name
    click_button 'Rock'
    expect(page).to have_content
    (/Computer chose: scissors|Computer chose: rock|Computer chose: paper/)
  end
end
