export default {
    template: `
    <div class="userHomeContainer">

        <div class="row hidden-details">
            <div class="small-12 medium-12 large-12 columns text-center" id="videoDetails">
                <a href="#" title="Close" class="modal-close" ><i class="fas fa-times fa-2x"></i></a>
                <h3>Movie Title</h3>
                <span>How many minutes -</span>
                <span>Released in Date</span>
                <p>Story</p>
            </div>

            <div class="small-12 medium-12 large-12 columns text-center" id="videoPlayer">
                <video autoplay controls muted src="" id="mainVideo"></video>
            </div>
        </div>

        <div class="row hidden-details">
            <div class="small-12 medium-12 large-12 columns text-center" id="audioDetails">
                <a href="#" title="Close" class="modal-close"><i class="fas fa-times fa-2x"></i></a> 
                <h3>Artist - Title</h3>
                <span>Released in Year</span> 
                <p>Story</p>       
            </div>

            <div class="small-12 medium-12 large-12 columns text-center" id="audioPlayer">
                <img src="" alt="Cover"/>   
                <audio autoplay controls src=""/>
            </div>
        </div>

        <div class="row">
            <div class="small-12 medium-12 large-12 columns" id="mediaTypes">
                <ul>
                    <li v-for="media in mediaTypes" :data-type="media.description" @click="loadMedia(null, media.description)" id="mediaIcons">
                        <img v-bind:src="[media.imgSrc]"><br>
                        <span>{{ media.description }}</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="row">
            <div class="small-12 medium-12 large-12 columns" id="genresContainer">
                <div class="small-12 medium-10 medium-offset-1 large-10 large-offset-1 columns" id="videoGenres">
                    <ulclass="mediaList">
                        <li>
                            <a href="#">50s</a>
                        </li>
                        <li>
                            <a href="#">60s</a>
                        </li>
                        <li>
                            <a href="#">70s</a>
                        </li>
                        <li>
                            <a href="#">80s</a>
                        </li>
                        <li>
                            <a href="#">90s</a>
                        </li>
                        <li>
                            <a href="#">ALL</a>
                        </li>
                    </ul>

                    <ul class="mediaList">
                        <li>
                            <a href="#">50s</a>
                        </li>
                        <li>
                            <a href="#">60s</a>
                        </li>
                        <li>
                            <a href="#">70s</a>
                        </li>
                        <li>
                            <a href="#">80s</a>
                        </li>
                        <li>
                            <a href="#">90s</a>
                        </li>
                        <li>
                            <a href="#">All</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="mediaContainer" class="small-12 medium-12 large-12 columns">
                <div id="mediaCovers" class="small-12 medium-10 large-10 columns text-center">
                <img src="" alt="Video Cover" id="videoImgs">
                <img src="" alt="Audio Cover" id="audioImgs">
                </div>     
            </div>  
        </div>
    </div>
    `,

}