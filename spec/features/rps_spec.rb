require 'spec_helper'

# feature "Load index page" do
#   scenario "Apper the test text" do
#     expect(page).to have_content "Hello world!"
#   end
# end
feature "Play name form" do
  scenario "submit names and see them on following screen" do
    visit("/")
    expect(page).to have_content "Hello world!"

  end
end
