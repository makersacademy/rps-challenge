require_relative "../../app.rb"

feature "Name displayed on the play game page" do
  scenario "It shows previously loaded name on the play game page" do
    sign_in_and_play
    expect(page).to have_text "Mittens"
  end
  scenario "It loads a default computer name" do
    sign_in_and_play
    expect(page).to have_text "Computer"
  end
  scenario "It loads a move selection" do
    sign_in_and_play
    expect(page).to have_selector("input", :class =>"rock")
    expect(page).to have_selector("input", :class =>"paper")
    expect(page).to have_selector("input", :class =>"scissors")
  end
  scenario "It loads a random move selection" do
    sign_in_and_play
    click_button "I'm Feeling Lucky"
  end
end

feature "Choosing a weapon" do 
  scenario "Choosing rock" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You clicked Rock'
  end
  scenario "Choosing Paper" do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'You clicked Paper'
  end
  scenario "Choosing Scissors" do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'You clicked Scissors'
  end
end


