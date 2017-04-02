feature 'computer picks option' do
  scenario "computer picks random option and is displayed" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Scissors')
    sign_in_and_play
    click_button 'submit'
    expect(page).to have_content "Computer Picked Scissors!"
  end
end
