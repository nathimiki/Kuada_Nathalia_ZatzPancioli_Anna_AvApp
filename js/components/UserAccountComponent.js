export default {
    props: ['currentuser'],
    
	template: `
	<div class="userAccountContainer row">
			<div class="small-10 small-offset-1 medium-8 medium-offset-2 large-8 large-offset-2 columns text-center">
				<h2 class="userATitle">{{ message }}</h2>
				<div id="userOptions" class="row">
                    <nav class="small-10 small-offset-1 medium-8 medium-offset-2 large-8 large-offset-2 columns text-center">
                        <ul id="editUser">
                            <a href="#"><li>
                                <i class="fas fa-user-plus fa-3x"></i>
                                <h4 id="newUser">Create New User</h4>
                            </li></a>
                            <a href="#"><li>
                                <i class="fas fa-edit fa-3x"></i>
                                <h4>Edit Users</h4>
                            </li></a>
                            <a href="#"><li>
                                <i class="fas fa-user-times fa-3x"></i>
                                <h4>Delete User</h4>
                            </li></a>
                        </ul>
                    </nav>  
				</div> 
			</div>  
	</div>
    `,
    
    data() {
        return {
          message: `Manage your account`,
        }
      },
    
}