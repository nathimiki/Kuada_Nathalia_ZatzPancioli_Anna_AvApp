export default {
    props: ['currentuser'],

    template: `
    <div class="createUserForm row">
        <div class="newUser small-10 medium-8 large-8 columns text-center">
        <h2>Create New User</h2>
            <form>
                <input type="text" id="fname" placeholder="fname" required>
                <input type="text" id="name" placeholder="username" required>
                <input type="email" id="email" placeholder="email" required>
                <input type="password" id="password" placeholder="password" required>
                <select>
                    <option disable selected>rating</option>
                    <option>Rating Type</option>
                </select>
                <input type="checkbox" id="adminBox">
                <label for="admin">
                    <p>Is this user an admin?</p>
                </label><br>
                <button type="submit">Create User</button>
            </form>  
        </div>          
    </div>`,

}