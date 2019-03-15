export default {
    props: ['currentuser'],

    template: `
    <div class="createUserForm row">
        <div class="newUser small-10 medium-8 large-8 columns text-center">
        <h2>Create New User</h2>
            <form>
                <input v-model="input.fname" type="text" id="fname" placeholder="fname" required>
                <input v-model="input.username" type="text" id="name" placeholder="username" required>
                <input v-model="input.email" type="email" id="email" placeholder="email" required>
                <input v-model="input.password" type="password" id="password" placeholder="password" required>
                <select v-model="input.rating">
                    <option disable selected>rating</option>
                    <option v-for="rate in rating" v-bind:value="rate.rating_id">{{rate.rating_type}}</option>
                </select>
                <input type="checkbox" id="adminBox" v-model="input.admin">
                <label for="admin">
                    <p>Is this user an admin?</p>
                </label><br>
                <button v-on:click.prevent="submit()" type="submit">Create User</button>
            </form>  
        </div>          
    </div>`,

    data() {
        return {
            input: {
                fname: '',
                username: '',
                email: '',
                password: '',
                rating: '',
                admin: false,
            },

            adminNumber: 0,
            rating: []
        }
    },

    created: function() {
        this.getRatings();
    },

    methods: {
        getRatings(){

            let url = `./admin/scripts/rating.php?allRatings=true`;

            fetch(url)
                .then(res => res.json())
                .then(data => {this.rating = data})
            .catch(function(error) {
                console.error(error);
            });

        },

        submit(){
            if(this.input.fname != "" && this.input.username != "" && this.input.email != "" && this.input.password != "" && this.input.rating !=""){

                let url =  `./admin/scripts/admin_createuser.php`;

                if (this.input.admin == true){
                    this.input.admin = 1;
                }else{
                    this.input.admin = 0;
                }

                const formData = new FormData();

                formData.append("fname", this.input.fname);
                formData.append("name", this.input.username);
                formData.append("email", this.input.email);
                formData.append("password", this.input.password);
                formData.append("rating", this.input.rating);
                formData.append("admin", this.input.admin);


                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                .then(res=>res.json())
                .then(data =>{
                    if (data != "User created successfully!"){
                        console.warn(data);
                        console.log('Something went wrong!');
                        return;
                    }else{
                        this.$router.replace({name:'account'});
                    }
                })
                .catch(function(error){
                    console.log(error);
                });
            }else{
                console.log('Fill in required fields!');
            }
        }
    }
}