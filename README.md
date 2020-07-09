# Lawyer Application README

To-Dos

2)Implement below in UsersController; otherwise user can type users/1/edit and change data. current_user -> logged_in?
before_action :logged_in_user, only: [:edit, :update]
# Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end


**CODE SNIPPETS BELOW**

USER INDEX CLIENT VIEW
<h2>Clients</h2>
<div><ul>
<% @users.clients.each do |client| %>
<li><%= link_to client.name, user_path(client.id) %></li>
<% end %>
</ul></div>


USER INDEX LAWYER VIEW
<div><ul>
<% @users.each do |lawyer| %>
<li><%= link_to lawyer.name, user_path(lawyer.id) %></li>
<% end %>
</ul></div> 



