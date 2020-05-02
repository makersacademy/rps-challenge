feature "Testing filling form with name" do
  scenario "So that the marketeer can see their name in lights" do
    enter_name
    expect(page).to have_content 'Coco'
  end
end
