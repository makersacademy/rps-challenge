feature "Testing filling form with name" do
  scenario "So that the marketeer can see their name in lights" do
    visit('/')
    fill_in('name', with: 'Coco')
    click_button('submit')
    expect(page).to have_content 'Coco'
  end
end
