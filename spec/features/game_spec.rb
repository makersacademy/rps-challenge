feature "tests working" do
  scenario "testing tests" do
    visit "/"
    expect(page).to have_content "Working"
  end
end



# feature "index page allows you to regsiter name" do
#   scenario "prompts entering of name" do
#     visit "/"
#     expect(page).to have_content "name:"
#   end
#   scenario "allows you to submit a form" do
#     visit "/"
#     expect(page).to have_content "Submit"
#   end
# end
