feature 'computer chooses RPS' do
  xscenario 'The Computer makes a random choice' do
    sign_in_and_play
    click_button('Scissors')
    allow(Kernel).to receive(:rand).and_return(1)
    click_button('Outcome')
    expect(page).to have_content('The Computer has chosen rock!')
  end
end
