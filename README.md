# README

To make tha app to work, is just necessary to open the irb console and start
creating the model instances, here is an example:

    user1 = User.create(name:"JP")
    admin_role = Role.create(name:"Admin")
    Permission.create(role:admin_role, action:"delete_file")
    Permission.create(role:admin_role, action:"add_file")
    RoleAssignation.create(user:user1, role:admin_role)

And finally execute the validation method: 

    user1.has_permission?("add_file")
