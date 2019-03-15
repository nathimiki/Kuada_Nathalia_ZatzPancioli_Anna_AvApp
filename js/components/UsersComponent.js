import UserComponent from './UserComponent.js';

export default {
	template: `
	<div class="usersContainer row">
			<div class="small-10 small-offset-1 medium-8 medium-offset-2 large-8 large-offset-2">
				<h2 class="usersTitle">{{ message }}</h2>
				<div id="userProfiles">
					<user v-for="(user, index) in userList" :liveuser="user" :key="index"></user>  
				</div> 
			</div>  
	</div>
	`,

	created: function() {
	  //debugger;
	  this.fetchAllUsers();
	},

	data() {
	  return {
		message: `Select your account`,

		userList: []
	  }
	},

	methods: {
	  fetchAllUsers() {
		let url = `./admin/scripts/users.php?allusers=true`;

		fetch(url)
		  .then(res => res.json())
		  .then(data => {this.userList = data})
		.catch(function(error) {
		  console.error(error);
		});
	  }
	},

	components: {
		user: UserComponent
	}
}