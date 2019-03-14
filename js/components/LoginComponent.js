export default {
    template: `
        <div class="loginContainer row">
            <div class="small-10 small-offset-1 medium-6 medium-offset-3 large-6 large-offset-3 columns">
                <h1 id="loginWelcome">Welcome!</h1>
                <p id="loginText">Please login with your username and password.</p>
                <form>
                    <div class="form-row align-items-center">
                        <div>
                            <label for="">Username</label>
                            <input type="text" placeholder="username" required>
                        </div>
                        <div>
                            <label for="">Password</label>
                            <input type="password"placeholder="password" required>
                        </div>
                        <div>
                            <button type="submit">Go!</button>
                        </div>
                    </div>
                </form>            
            </div>
        </div>
     `,

}