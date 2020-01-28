# <h1 class='page-header'>User Profile</h1>
# <p>
#   Username: <%= current_user.username %>
# </p>




@users.each do |user|
  json.set! user.id do
    json.extract! user, :id, :username, user: user
  end
end
