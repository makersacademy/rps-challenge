feature "rock, paper, scissors options" do 
  scenario 'should be given the three rock paper buttons' do 
    sign_in
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end 
end 