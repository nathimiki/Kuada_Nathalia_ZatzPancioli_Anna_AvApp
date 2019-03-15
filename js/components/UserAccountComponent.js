export default {
    props: ['currentuser'],
    
	template: `
	<div class="userAccountContainer row">
			<div class="small-10 small-offset-1 medium-8 medium-offset-2 large-8 large-offset-2 columns text-center">
				<h2 class="userATitle">{{ message }}</h2>
				<div id="userOptions" class="row">
                    <nav class="small-10 small-offset-1 medium-8 medium-offset-2 large-8 large-offset-2 columns text-center">
                        <ul id="editUser">
                            <li v-on:click="createUser()">
                                <i class="fas fa-user-plus fa-3x"></i>
                                <h4 id="newUser">Create New User</h4>
                            </li>
                            <a href="#"><li>
                                <i class="fas fa-edit fa-3x"></i>
                                <h4>Edit Users</h4>
                            </li></a>
                            <li v-on:click="deleteUser('liveuser.id')">
                                <i class="fas fa-user-times fa-3x"></i>
                                <h4>Delete User</h4>
                            </li>
                        </ul>
                    </nav>  
				</div> 
			</div>  
	</div>
    `,
    
    data() {
        return {
          message: `Choose which user you want to edit:`,

          userList: []
        }
      },

    methods: {
    fetchUsers() {
        let url = `./admin/scripts/users.php?allusers=true`;
        console.log('{this.userList = data}');
        fetch(url)
        .then(res => res.json())
        .then(data => {this.userList = data})
        .catch(function(error) {
        console.error(error);
        });
    },
    
    editUser(id){
        this.$router.push({ name:"edituser", params: { currentuser: this.liveuser } });
    },

    createUser(){
        this.$router.push({ name: "createuser" });
    },

    deleteUser(id){
        let url =  `./admin/scripts/admin_deleteuser.php`;
            const formData = new FormData();

            formData.append("id", id);

            fetch(url, {
                    method: 'POST',
                    body: formData
            })
            .then(res=>res.json())
            .then(data =>{
                if ( data != "Success!!"){
                    console.warn(data);
                    console.log('Something went wrong!');
                    return;
                }else{
                    console.log('User deleted successfully');
                    this.fetchUsers();
                }
            })
            .catch(function(error){
                    console.log(error);
            });
        }

    }
    
}