export default {
    template: `
        <div class="loginContainer row">
            <div class="small-10 small-offset-1 medium-6 medium-offset-3 large-6 large-offset-3 columns">
                <h1 id="loginWelcome">Welcome!</h1>
                <p id="loginText">Please login with your username and password.</p>
                <form>
                    <div class="form-row align-items-center">
                        <div>
                            <label for="inlineFormInputName">Name</label>
                            <input v-model="input.username" type="text" placeholder="username" required>
                        </div>
                        <div>
                            <label for="inlineFormPassword">Name</label>
                            <input v-model="input.password" type="password"placeholder="password" required>
                        </div>
                        <div>
                            <button v-on:click.prevent="login()" type="submit">Go!</button>
                        </div>
                    </div>
                </form>            
            </div>
        </div>
     `,
 
     data() {
         return {
             input: {
                 username: "",
                 password: ""
             },

         }
     },
 
     methods: {
         login() {
            //console.log(this.$parent.mockAccount.username);
 
            if(this.input.username != "" && this.input.password != "") {
            // fetch the user from the DB
            // generate the form data
            let formData = new FormData();

             formData.append("username", this.input.username);
             formData.append("password", this.input.password);

             let url = `./admin/scripts/admin_login.php`;
 
             fetch(url, {
                    method: 'POST',
                    body: formData
                })
                 .then(res => res.json())
                 .then(data => {
                    if (typeof data != "object") { // means that we're not getting a user object back
                        console.warn(data);
                        console.error("authentication failed, please try again");
                        this.$emit("autherror", data);
                    } else {
                        this.$emit("authenticated", true, data[0]);
                        this.$router.replace({ name: "users" });
                    }
                })
             .catch(function(error) { 
                 console.log(error);
             });
        } else {
                 console.log("A username and password must be present");
            }
        }
    }
 }