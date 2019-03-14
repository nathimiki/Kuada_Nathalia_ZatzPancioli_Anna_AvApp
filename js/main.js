import UsersComponent from './components/UsersComponent.js';
import LoginComponent from './components/LoginComponent.js';
import UserAccountComponent from './components/UserAccountComponent.js';
import UserHomeComponent from './components/UserHomeComponent.js';

let router = new VueRouter({

  routes: [
      { path: '/', redirect: { name: "login"} },
      { path: '/login', name: "login", component: LoginComponent },
      { path: '/users', name: 'users', component: UsersComponent },
      { path: '/userhome', name: "home", component: UserHomeComponent, props: true },
      { path: '/account', name: 'account', component: UserAccountComponent }
  ]
});

const vm = new Vue({
 
  data: {
    authenticated: false,
    administrator: false,

    genericMessage: "hello from the parent",

    mockAccount: {
      username: "user",
      password: "password"
    },

    user: [],

    toastmessage: "Login failed!"
  },

  created: function() {
    if (localStorage.getItem("cachedUser")) {
      let user = JSON.parse(localStorage.getItem("cachedUser"));
      this.authenticated = true;
      this.$router.push({ name: "home", params: { currentuser: user }});
    } else {
      this.$router.push({ path: "/login"} );
    }    
  },

  methods: {
    setAuthenticated(status, data) {
      this.authenticated = status;
      this.user = data;
    },

    popError(errorMsg) {
      this.toastmessage = errorMsg;
      $('.toast').toast('show');
    },

    logout() {
      if (localStorage.getItem("cachedUser")) {
        localStorage.removeItem("cachedUser");
      }
      this.$router.push({ path: "/login" });
      this.authenticated = false;
    },

    navToUserAccount() {            
      this.$router.push({ name: "account", params: { currentuser: this.liveuser } });
      localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
    },

    navToUserHome() {            
      this.$router.push({ name: "home", params: { currentuser: this.liveuser } });
      localStorage.setItem("cachedUser", JSON.stringify(this.liveuser)); 
    }
  },

  router: router
}).$mount("#app");

router.beforeEach((to, from, next) => {
  console.log('router guard fired!', to, from, vm.authenticated);

  if (vm.authenticated == false) {
    next("/login");
  } else {
    next();
  }
});