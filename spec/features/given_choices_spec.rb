require "././app.rb"

feature "given_choices" do
  scenario "lists Rock, Paper, Scissors" do
    visit ('/')
    fill_in :name, with: "Tim"
    click_on 'submit'
    click_on 'play_game'
    expect(page).to have_content ("Rock")
    expect(page).to have_content ("Paper")
    expect(page).to have_content ("Scissors")
  end
end
