# <h1 class='page-header'>User Profile</h1>
# <p>
#   Username: <%= current_user.username %>
# </p>




@users.each do |user|
  json.set! user.id do
   json.partial! "api/users/user", user: user
  end
end
