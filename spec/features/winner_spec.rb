feature 'Declaring the round winner' do
  scenario 'after a round' do
    sign_in_and_play
    click_button('Rock')
    allow(Kernel).to receive(:rand).and_return(3)
    click_button('Outcome')
    expect(page).to have_content "Ed won this round!"
  end
end
