# <h1 class='page-header'>New User</h1>

# <a class='button' href=<%= new_session_url %> >Already have an account? <br> Click HERE to Sign-In</a>

# <form class='form' action="<%= users_url %>" method="post"> 
#   <input
#     type="hidden"
#     name="authenticity_token"
#     value="<%= form_authenticity_token %>">

#   <p>
#     <label for='new-user-username'>Username:</label>
#     <input id='new-user-username' type="text" name="user[username]">
#   </p>

#   <p>
#     <label for='new-user-password'>Password:</label>
#     <input id='new-user-password' type="password" name="user[password]">
#   </p>

#   <input type="submit" value="Submit">
# </form>
json.extract! user, :id, :username, user: @user




