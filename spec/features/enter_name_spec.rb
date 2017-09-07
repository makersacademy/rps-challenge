require 'features/web_helper'

feature "enter names" do
  scenario "user able to enter the name before game" do
    sign_in
    expect(page).to have_content "YULIA, make your choice!"
  end
end
