# README

Lawyer App

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


USER INDEX CLIENT VIEW
<h2>Clients</h2>
<div><ul>
<% @users.clients.each do |client| %>
<li><%= link_to client.name, user_path(client.id) %></li>
<% end %>
</ul></div>
