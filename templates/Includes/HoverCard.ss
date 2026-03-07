<style>
    .hover-card {
        --img-scale-start: 1;
        --img-scale-hover: 1.2;

        --overlay-bg: rgba(0, 0, 0, 0.7);
        --overlay-opacity-start: 0;
        --overlay-opacity-hover: 1;

        --content-opacity-start: 0;
        --content-opacity-hover: 1;

        --content-transform-start: translateX(-20%);
        --content-transform-hover: translateX(0);

        --title-delay: 0.05s;
        --description-delay: 0.12s;
        --link-delay: 0.18s;

        position: relative;
        overflow: hidden;
        margin: 0;
        background-color: black;
        aspect-ratio: 5/7;
    }

    .hover-card .zoom {
        position: relative;
        overflow: hidden;
        width: 100%;
        height: 100%;
        display: block;
        z-index: 0;
    }

    .hover-card .zoom img {
        object-fit: cover;
        width: 100%;
        height: 100%;
        display: block;
        transition: transform 0.5s ease;
        transform: scale(var(--img-scale-start));
    }

    .hover-card:hover .zoom img {
        transform: scale(var(--img-scale-hover));
    }

    .hover-card .card-section {
        position: absolute;
        inset: 0;
        background-color: var(--overlay-bg);
        display: flex;
        flex-direction: column;
        justify-content: end;
        color: #fff;
        opacity: var(--overlay-opacity-start);
        transition: opacity 0.5s ease;
    }

    .hover-card:hover .card-section {
        opacity: var(--overlay-opacity-hover);
    }

    .hover-card .card-title,
    .hover-card .card-description,
    .hover-card .card-link {
        opacity: var(--content-opacity-start);
        transform: var(--content-transform-start);
        transition: opacity 0.4s ease, transform 0.4s ease;
    }

    .hover-card:hover .card-title,
    .hover-card:hover .card-description,
    .hover-card:hover .card-link {
        opacity: var(--content-opacity-hover);
        transform: var(--content-transform-hover);
    }

    .hover-card .card-title {
        transition-delay: var(--title-delay);
    }

    .hover-card .card-description {
        transition-delay: var(--description-delay);
    }

    .hover-card .card-link {
        transition-delay: var(--link-delay);
    }

    /* Reverse / reveal-out variant */
    .hover-card.reverse {
        --img-scale-start: 1.2;
        --img-scale-hover: 1;

        --overlay-bg: rgba(0, 0, 0, 0.95);
        --overlay-opacity-start: 1;
        --overlay-opacity-hover: 0;

        --content-opacity-start: 1;
        --content-opacity-hover: 0;

        --content-transform-start: translateX(0);
        --content-transform-hover: translateX(-120%);

        --title-delay: 0s;
        --description-delay: 0.05s;
        --link-delay: 0.1s;
    }
</style>

<a class="card hover-card" href="/" target="_blank" rel="noopener noreferrer"> 
    <div class="zoom">
        <img src="./assets/Uploads/Promos/eternity__FillMaxWzIwMDAsMTIwMF0.jpg" alt="">
    </div>
    <div class="card-section p-40">
        <h3 class="card-title">Card Title</h3>
        <p class="card-description">Card Description asdkflj afkd jaksdfjkej ad dkfjasdlk fjke jfdkfjalrj ldjf</p>
        <span class="card-link">View More</span>
    </div>
</a>

<a class="card hover-card reverse" href="/" target="_blank" rel="noopener noreferrer"> 
    <div class="zoom">
        <img src="./assets/Uploads/Promos/eternity__FillMaxWzIwMDAsMTIwMF0.jpg" alt="">
    </div>
    <div class="card-section p-40">
        <h3 class="card-title">Card Title</h3>
        <p class="card-description">Card Description asdkflj afkd jaksdfjkej ad dkfjasdlk fjke jfdkfjalrj ldjf</p>
        <span class="card-link">View More</span>
    </div>
</a>