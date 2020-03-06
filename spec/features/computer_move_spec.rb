feature "computer's move" do

  scenario 'computer selects a move' do
    visit ('/')
    click_button 'Submit'
    click_button 'rock'
    expect(page).to have content "computer selects #{@computer.move}"
  end
end