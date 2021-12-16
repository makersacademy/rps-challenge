feature "Enter name" do
  scenario "submitting name" do
    enter_name_to_play
    expect(page).to have_content 'rock paper scissor'
  end
end
