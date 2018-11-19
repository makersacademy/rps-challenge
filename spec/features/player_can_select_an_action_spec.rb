feature 'player can select rock, paper or scissors.' do
  scenario "Player can pick paper" do
    fill_in_name
    click_button('Paper')
    expect(page).to have_content 'David: Paper'
   end

   scenario "Player can pick scissors" do
     fill_in_name
     click_button('Scissors')
     expect(page).to have_content 'David: Scissors'
    end

  scenario "Player can pick rock" do
    fill_in_name
    click_button('Rock')
    expect(page).to have_content 'David: Rock'
   end
end
