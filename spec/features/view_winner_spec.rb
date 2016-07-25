feature 'View winner' do

  scenario "When I submit 'Rock' I am told I have won" do
    allow(Computer).toreceive(:random_select).and_return(:Scissors)
    rock_choice
    click_button('View')
    expect(page).to have_content "You win!!"
  end

  scenario "When I submit 'Rock' I am told I have lost" do
    allow(Computer).toreceive(:random_select).and_return(:Paper)
    rock_choice
    click_button('View')
    expect(page).to have_content "You lose!!"
  end

  scenario "When I submit 'Rock' I am told it's a tie" do
    allow(Computer).to receive(:random_select).and_return(:Rock)
    rock_choice
    click_button('View')
    expect(page).to have_content "It's a tie"
  end

end
