require "././app.rb"

feature "winning" do
  scenario "If my choice beats the computers a winning page is displayed" do
    sign_in_and_play
    click_on "rock"
    allow_any_instance_of(Array).to receive(:sample).and_return("scissors")
    click_on 'computer choice'
    expect(page).to have_content('Tim wins!')
  end
end
