<div id="testimonial-section" class="bg-primary">
    <div class="grid-container full ">
        <div class="grid-x align-middle align-center">
            <div class="cell large-auto">
               <div class="grid-x large-up-2 medium-up-2 small-up-1">
                <% loop $Testimonies.Limit(4) %>
                    <div class="cell testimonial-container p-40">
                        <div data-aos="fade-up">
                            <p class="txt-light">" $Testimony "</p>
                            <p class="lead">- $Title</p>
                        </div>
                    </div>
                <% end_loop %>
               </div>
            </div>
            <div class="cell large-4 testimonial-content">
                
                    <div class="p-40"  data-aos="fade-up">
                        <h2 class="h1 txt-light">See what great<br>marketing can do</h2>
                        <p class="lead">something about our services again</p>
                        <a href="" class="button secondary large">Contact Us</a>
                    </div>
                
            </div>
        </div>
    </div>
</div>