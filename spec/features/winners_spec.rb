feature 'Display winner' do
  scenario 'display correct winner' do
    game = Rock_Paper_Scissors.new("Rock")
    visit('/')
    select 'Rock', :from => "weapon_choice"
    allow_any_instance_of(Rock_Paper_Scissors).to receive(:computer_choice).and_return("Paper")
    click_button 'Play'
    expect(page).to have_content 'Computer Wins'
  end
end
