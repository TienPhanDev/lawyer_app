# Lawyer Application README

To-Dos
-from signup, redirect to multiform for lawyer completion  
-Implement below in UsersController; otherwise user can type users/1/edit and change data. current_user -> logged_in?
before_action :logged_in_user, only: [:edit, :update]
# Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
-create seed data



**DEMO**
-Showcase static pages layout links without being logged in(emphasize how header links differ once logged in)
-Go to signup page & show how failure to signup presents errors correctly 
-Signup new client;
  -point out header links changed due to logged in status
  -point out client CRUD functionality 
  -point out notification is empty w/ no requests
  -click on browse to see list of lawyers available
  -click profile and click create request & create 2 requests
-Click on profile to showcase pending requests CRUD functionality
-Click logout to show homepage
-Go to login to show signing in as lawyer & emphasize
  -browse now shows requests from all clients 
  -can select a request and offer a consult to client; (show page now reflects
  lawyers requests they've offered consult on)
  -show how lawyer can select offered request and have red cancel consult button
-Show client accepting offered consult and consult form
-Show lawyer going to consult show page to click complete consult
-Show completed consult history for lawyer show page
**EXTRA**
-Show how user cannot access other users profiles due to helper/controller methods

