feature "Registering name" do 
  scenario "Submit my name" do
    register_name
    expect(page).to have_content "Hello Peter, welcome to Rock paper scissors."
  end
end

# User Story 1 

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game
