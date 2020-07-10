# Lawyer Application README
-from signup, redirect to multiform for lawyer completion (hidden field values from profile to account???)
-if user logged in, signup button shouldnt be on front page
-when lawyer cancels consult, it still have notification number in show page due to "accepted_requests", maybe change to active_requests? and request/id can still be visited somehow; likely due to request accepted but not yet accepted by client and so not a consult yet but our delete method routed to delete(request.consult.id)
-line 34 of user.show breaks if client is offered consult; no lawyer.name


**DEMO**
-Showcase static pages layout links without being logged in(emphasize how header links differ once logged in)

-Go to multi-step signup form and show creation of new client
OR
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
-Show how logged in user cannot access other user profiles
i.e. while logged in as mickey mouse from show page, try and enter /users/2 into browser and see rejection message but you can type in /user/11 because you have access to lawyer show pages
-Show how once you click logout, you cannot hit back on browser to see show page again, it asks you to login

