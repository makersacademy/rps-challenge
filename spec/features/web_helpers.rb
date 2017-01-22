def sign_in

visit "/"

fill_in :first_name, with: "Saul"
fill_in :last_name, with: "Bellow"
click_button "Submit"

end
