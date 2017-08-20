require './app.rb'

feature Rps do

  scenario "it says hello Marketeer" do
    visit "/"
    expect(page).to have_text("Hello Marketeer")
  end

  scenario "it can record the player's name" do
    visit('/')
    fill_in('player', :with => 'Alessio')
    click_button('Submit')
    expect(page).to have_content("Hello Alessio")
  end
end
