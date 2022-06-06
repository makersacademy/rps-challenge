feature "display computer's option" do
  scenario "when computer plays rock" do 
    allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content "Computer played Rock"
  end 

  scenario "when computer plays paper" do 
    allow_any_instance_of(Array).to receive(:sample).and_return 'Paper'
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content "Computer played Paper"
  end

  scenario "when computer plays scissors" do 
    allow_any_instance_of(Array).to receive(:sample).and_return 'Scissors'
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content "Computer played Scissors"
  end 
end  
