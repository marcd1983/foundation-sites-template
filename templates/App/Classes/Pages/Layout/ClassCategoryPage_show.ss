
    <div class="grid-x grid-margin-x grid-margin-y">
        <div class="cell">
            <div class="grid-x grid-margin-x grid-margin-y">
                 <% if $ClassOffering.Banner %>
                <div class="cell large-12">
                     <% if $ClassOffering.Banner %>
                    <div class="flex-container align-justify align-middle">
                        
                        <div>
                            <h1 class="page-title">$ClassOffering.Title</h1>
                        </div>
                        <div>
                            <a class="button hollow tiny" href="$Link">&larr; Back to $Title</a>
                        </div>
                       
                    </div>
                     <% end_if %>
                
                    <% loop $ClassOffering.Banner %>
                        
                            <picture>
                                <source media="(min-width:1024px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(1440,400).URL<% else %>$Fill(1440,400).URL<% end_if %>">
                                <source media="(max-width:1023px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(1440,400).URL<% else %>$Fill(1440,400).URL<% end_if %>">
                                <img src="<% if function_exists('FocusFill') %>$FocusFill(1440,400).URL<% else %>$ScaleMaxWidth(1440).URL<% end_if %>"
                                    alt="Title.ATT" width="1440" height="400"
                                    style="width:100%;height:auto;">
                            </picture>
                       
                        <% end_loop %>
                
                </div>
                <% end_if %>
                <% if not $ClassOffering.HideImage %>
                <% if $ClassOffering.Image %>
                <div class="cell large-4">
                    <% loop $ClassOffering.Image %>
                        <div class="card">
                            <picture>
                                <source media="(min-width:1024px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(600,600).URL<% else %>$Fill(600,600).URL<% end_if %>">
                                <source media="(max-width:1023px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(600,600).URL<% else %>$Fill(600,600).URL<% end_if %>">
                                <img src="<% if function_exists('FocusFill') %>$FocusFill(600,600).URL<% else %>$ScaleMaxWidth(600).URL<% end_if %>"
                                    alt="Title.ATT" width="600" height="600"
                                    style="width:100%;height:auto;">
                            </picture>
                        </div>
                    <% end_loop %>
                </div>
                <% end_if %>
                <% end_if %>
                <div class="cell large-auto">
                    <% if $ClassOffering %>
                    <% if not $ClassOffering.Banner %>
                    <div class="flex-container align-justify align-middle">
                        
                        <div>
                            <h1 class="">$ClassOffering.Title</h1>
                        </div>
                        <div>
                            <a class="button hollow tiny" href="$Link">&larr; Back to $Title</a>
                        </div>
                       
                    </div>
                     <% end_if %>
                    <% if $ClassOffering.Days %>
                    <p><strong>Days:</strong> $ClassOffering.Days</p>
                    <% end_if %>
                     <% if $ClassOffering.Semester %>
                    <p><strong>Semester:</strong> $ClassOffering.Semester</p>
                    <% end_if %>
                    <% if $ClassOffering.AgeRange %>
                    <p><strong>Age Range:</strong> $ClassOffering.AgeRange</p>
                    <% end_if %>
                    <% if $ClassOffering.PriceRange %>
                    <p><strong>Price Range:</strong> $ClassOffering.PriceRange</p>
                    <% end_if %>
                    <% if $ClassOffering.DressCode %>
                    <p><strong>Dress Code:</strong> $ClassOffering.DressCode</p>
                    <% end_if %>
                    <% if $ClassOffering.Instructors %>
                    <p>
                        <strong>Instructor<% if $ClassOffering.Instructors.Count > 1 %>s<% end_if %>:</strong>
                        <% loop $ClassOffering.Instructors %>
                            <a href="$Link">$DisplayName</a><% if not $isLast %>,<% end_if %> 
                        <% end_loop %>
                    </p>
                    <% end_if %>
                </div>
            </div>
            
        </div>
    </div>
    <div class="grid-x grid-margin-x grid-margin-y">
        <div class="cell">
            <% if $ClassOffering.Content %>
                <div class="content typography">
                    $ClassOffering.Content
                </div>
            <% end_if %>
        </div>
    </div>
    <div class="grid-x grid-margin-x grid-margin-y">
        <div class="cell">
             <% if $ClassOffering.JackrabbitScriptURL %>
            <h2 class="section-title">Current Openings</h2>
            <script src="$ClassOffering.JackrabbitScriptURL.ATT"></script>
            <% end_if %>
            <% else %>
            <h1>Class not found</h1>
            <% end_if %>
        </div>
    </div>
