export default {

    template: `
    <div id="userContainer">
            <div>
                <div id="user">
                    <img src="">
                    <p>Username</p>
                </div>
            </div>
    </div>`,

    created: function() {
        if (this.liveuser.avatar == "") {
            this.liveuser.avatar = "kidUser.jpg";
        }
    },

    methods: {
        navToUserHome() {            
            this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
            // set a localstorage session object so that we don't have to log back in on page refresh or after our initial login
            localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
        }
    }
}

}