class UserRolesModel{
  final String userName;
  final String email;
  final String roleAssign;
  final String status;
  UserRolesModel(this.userName, this.email, this.roleAssign, this.status);
}

class TempData{
  List<UserRolesModel> user=[
    UserRolesModel("Vishal Kumar Sinha", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Inactive'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Inactive'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Inactive'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Inactive'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Inactive'),
    UserRolesModel("Vishal Kumar", 'vishal@singsys.com', 'Developer', 'Active'),
  ];
}