require 'rails_helper.rb'

feature "Account authentication" do
    
    
    scenario "User successfully signs up for the website" do
            visit root_path
            expect(page).to have_content("Sign Up")
            click_button "Sign Up"
            expect(page).to have_field("email")
            expect(page).to have_field("password")
             fill_in "email", with: "marwais@awesome.com"
             fill_in "password", with: "1234"
    end
    scenario "User successfully signs in for the website" do 
            visit root_path
            expect(page).to have_content("Sign In")
            click_button "Sign In"
            expect(page).to have_field("email")
            expect(page).to have_field("password")
             fill_in "email", with: "marwais@awesome.com"
              fill_in "email", with: "1234"
    end
    

end
