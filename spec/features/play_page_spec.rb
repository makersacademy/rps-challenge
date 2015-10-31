feature "play page:" do

  scenario "user sees name" do
    submit_names("Ed")
    expect(page).to have_content "Ed's turn"
  end
  
end
