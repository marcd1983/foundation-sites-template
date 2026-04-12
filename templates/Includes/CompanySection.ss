<% if $Companies %>
<div id="company-section" >
    <div class="grid-container full ">
        <div class="grid-x align-middle align-center">
            <div class="cell large-4 company-content">
                
                    <div class="p-40" data-aos="fade-in">
                        <h2 class="h1 txt-primary">People We<br>Work With</h2>
                        <p class="lead">something about our services again</p>
                        <a href="" class="button large">Contact Us</a>
                    </div>
                
            </div>
            <div class="cell large-auto">
               <div class="grid-x large-up-4 medium-up-3 small-up-2">
                    <% loop $Companies.Limit(12) %>
                    <div class="cell logo-container">
                        <img class="company-logo" src="$Image.URL" alt="$Image.Title" data-aos="fade-up">
                    </div>
                    <% end_loop %>
               </div>
            </div>
        </div>
    </div>
</div>
<% end_if %>