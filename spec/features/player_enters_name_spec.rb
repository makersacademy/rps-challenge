require_relative './web_helpers'

feature "player enters name" do
  scenario "/game displays names" do
    enter_and_submit_name
    expect(page).to have_text("ROSIE!")
  end
end