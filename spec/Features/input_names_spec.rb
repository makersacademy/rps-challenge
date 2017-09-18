

feature 'main index page input' do

  scenario 'names are assigned from index and passed to choice screen' do
    reset_database
    give_name_heraldo
    expect(page).to have_content('You there, Heraldo, how shall you fight Roborory? Select your weapon!')

  end

end
