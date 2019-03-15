export default {
    props: ['currentuser'],

    template: `
    <div class="userHomeContainer">

    <!-- render this if we're viewing television or film -->
        <div class="row hidden-details" v-if="activeMediaType == 'video' && retrievedMedia.length > 0" :class="{'show-details' : showLightbox}">
            <div class="small-12 medium-12 large-12 columns text-center" id="videoDetails">
                <a href="#" title="Close" class="modal-close" v-on:click="closeLightbox"><i class="fas fa-times fa-2x"></i></a>
                <h3>{{currentMediaDetails.movies_title}}</h3>
                <span>{{currentMediaDetails.movies_runtime}} minutes -</span>
                <span>Released in {{currentMediaDetails.movies_release}}</span>
                <p v-html="currentMediaDetails.movies_storyline"></p>
            </div>

            <div class="small-12 medium-12 large-12 columns text-center" id="videoPlayer">
                <video autoplay controls muted :src="'video/' + currentMediaDetails.movies_trailer" id="mainVideo"></video>
            </div>
        </div>

        <div class="row hidden-details" v-if="activeMediaType == 'audio' && retrievedMedia.length > 0" :class="{'show-details' : showLightbox}">
            <div class="small-12 medium-12 large-12 columns text-center" id="audioDetails">
                <a href="#" title="Close" class="modal-close" v-on:click="closeLightbox"><i class="fas fa-times fa-2x"></i></a> 
                <h3>{{currentMediaDetails.audio_artist}} - {{currentMediaDetails.audio_title}}</h3>
                <span>Released in {{currentMediaDetails.audio_year}}</span> 
                <p v-html="currentMediaDetails.audio_storyline"></p>       
            </div>

            <div class="small-12 medium-12 large-12 columns text-center" id="audioPlayer">
                <img :src="'images/audio/' + currentMediaDetails.audio_cover" alt="album art"/>   
                <audio autoplay controls :src="'audio/' + currentMediaDetails.audio_src"/>
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
                    <ul v-if="activeMediaType == 'video'" class="mediaList">
                        <li>
                            <a href="50s" @click.prevent="loadMedia('50s', null)">50s</a>
                        </li>
                        <li>
                            <a href="60s" @click.prevent="loadMedia('60s', null)">60s</a>
                        </li>
                        <li>
                            <a href="70s" @click.prevent="loadMedia('70s', null)">70s</a>
                        </li>
                        <li>
                            <a href="80s" @click.prevent="loadMedia('80s', null)">80s</a>
                        </li>
                        <li>
                            <a href="90s" @click.prevent="loadMedia('90s', null)">90s</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, 'video')">ALL</a>
                        </li>
                    </ul>

                    <!-- genres for audio -->
                    <ul v-if="activeMediaType == 'audio'" class="mediaList">
                        <li>
                            <a href="50s" @click.prevent="loadMedia('50s', null)">50s</a>
                        </li>
                        <li>
                            <a href="60s" @click.prevent="loadMedia('60s', null)">60s</a>
                        </li>
                        <li>
                            <a href="70s" @click.prevent="loadMedia('70s', null)">70s</a>
                        </li>
                        <li>
                            <a href="80s" @click.prevent="loadMedia('80s', null)">80s</a>
                        </li>
                        <li>
                            <a href="90s" @click.prevent="loadMedia('90s', null)">90s</a>
                        </li>
                        <li>
                            <a href="all" @click.prevent="loadMedia(null, 'audio')">All</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="mediaContainer" class="small-12 medium-12 large-12 columns">
                <div id="mediaCovers" class="small-12 medium-10 large-10 columns text-center">
                <img v-if="activeMediaType == 'video'" v-for="media in retrievedMedia" :src="'images/video/' + media.movies_cover" alt="Video Cover" @click="switchActiveMedia(media)" id="videoImgs">
                <img v-if="activeMediaType == 'audio'" v-for="media in retrievedMedia" :src="'images/audio/' + media.audio_cover" alt="Audio Cover" @click="switchActiveMedia(media)" id="audioImgs">
                </div>     
            </div>  
        </div> <!-- end 2-up for media info -->
    </div>
    `,

    data() {
        return {
            activeMediaType: "video",

            currentMediaDetails: {},

            mediaTypes: [
                { imgSrc: "images/movies.jpg", description: "video" },
                { imgSrc: "images/tv.jpg", description: "tv" },
                { imgSrc: "images/music.jpg", description: "audio" }
            ],

            retrievedMedia: [],

            vidActive: false,

            showLightbox : false,

        }
    },

    created: function() {
        this.loadMedia(null, 'video');
    },

    methods: {

        loadMedia(filter, mediaType) {
            if (this.activeMediaType !== mediaType && mediaType !== null) {
                this.activeMediaType = mediaType;  
            }

            let url = (filter == null) ? `./admin/index.php?media=${this.activeMediaType}` : `./admin/index.php?media=${this.activeMediaType}&&filter=${filter}`;
            // console.log(this.activeMediaType);
            fetch(url)
                .then(res => res.json())
                //.then(res=>res.text())
                //.then(text=>console.log(text))
                .then(data => {                    
                    console.log(data);
                    this.retrievedMedia = data;                
                })
            .catch(function(error) {
                console.error(error);
            });
        },

        closeLightbox() {
            this.showLightbox = false;
        },

        switchActiveMedia(media) {
            console.log(media);

            this.currentMediaDetails = media;

            this.showLightbox = true;
        },

    }
}