feature "Enter name" do

  scenario "submitting name" do
    visit('/')
    fill_in :player_one_name, with: 'Mike'
    click_button 'Rock (Paper, Scissors) on!'
    expect(page).to have_content 'Mike: Choose your weapon!'
  end
end
