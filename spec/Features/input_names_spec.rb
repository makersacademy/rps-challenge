feature 'main index page input' do

  scenario 'names are assigned from index and passed to choice screen' do
    give_name_heraldo
    expect(page).to have_content('Welcome to the arena, Heraldo. How shall you fight Roborory? Select your weapon!')
  end

end
