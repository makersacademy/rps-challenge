require './app.rb'

feature 'Player name' do
  scenario "Player can enter their name" do
    sign_in
    expect(page).to have_text("Hello Yuri!")
  end
end
