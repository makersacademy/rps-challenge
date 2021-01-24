feature "enter name" do
  
  scenario "player can register name before game" do
    enter_name
  end
end

feature "display name" do
  
  scenario "app displays player name" do
    enter_name
    expect(page).to have_content "Joe"
  end
end