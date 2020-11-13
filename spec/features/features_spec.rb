require_relative "../../app"

describe RPS, type: :feature do

  it "Has greeting message on homescreen" do
    visit '/'
    expect(page).to have_content("Welcome Makers Academy Marketing Array team member")
    expect(page).to have_content("Blow off some steam with classic game of Rock Paper Scissors!!")
    expect(page).to have_content("But first, what name do you go by?")
  end

  it "Welcomes player correctly after filling out name" do
    visit '/'
    fill_in("name", with: "dumb")
    click_button("Submit")
    expect(page).to have_content("dumb? That's a funny name.")
  end

end
