class User < ApplicationRecord
  has_many :role_assignations
  has_many :roles, through: :role_assignations

  def has_permission?(action)
    self.roles.map { |r| return true if r.permissions.exists?(action:action)}
    return false
  end

end

# user1 = User.create(name:"JP")
# admin_role = Role.create(name:"Admin")
# Permission.create(role:admin_role, action:"delete_file")
# Permission.create(role:admin_role, action:"add_file")
# RoleAssignation.create(user:user1, role:admin_role)
# user1.has_permission?("add_file")