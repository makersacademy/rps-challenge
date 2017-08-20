require './app.rb'

feature Rps do

  scenario "it says hello Marketeer" do
    visit "/"
    expect(page).to have_text("Hello Marketeer")
  end
end
