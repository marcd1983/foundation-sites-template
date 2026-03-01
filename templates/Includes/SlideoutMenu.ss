<%-- Create a new .slide-out-container for each slideout instance --%>
<%-- each slideout container needs an id of SlideOut'Yourslidename' each slideout trigger button needs an id of slideMenu'Yourslidename' --%>
<div id="SlideOut01" class="slide-out-container">
    <div class="menu-panel">
        <div class="btn-contain ">
        <span class="menu-title">Menu</span>
            <button class="menu-close-btn button small hollow light" tabindex="0" style="margin:0;">
                Close X
            </button>
        </div>
        <div class="menu-container">
            <ul class="vertical menu accordion-menu" data-accordion-menu>
                <% loop Menu(1) %>
                    <% if Children %>
                        <li>
                        <a href="#">$MenuTItle</a>
                        <% if Children %>
                            <ul class="menu vertical nested tritary">
                                <% loop Children %>
                                    <li>
                                    <a href="$Link" <% if $OpenInNewWindow %>target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                                    <% if Children %>
                                        <ul class="menu vertical nested tritary">
                                            <% loop Children %>
                                                <li>
                                                <a href="$Link" <% if $OpenInNewWindow %>target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                                                </li>
                                            <% end_loop %>
                                        </ul>
                                    <% end_if %>
                                    </li>
                                <% end_loop %>
                            </ul>
                        <% end_if %>
                    </li>
                    <% else %>
                        <li><a href="$Link" <% if $OpenInNewWindow %>target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a></li>
                    <% end_if %>
                <% end_loop %>
              </ul>
        </div>
    </div>
</div>

<div id="SlideOut02" class="slide-out-container">
    <div class="menu-panel">
        <div class="btn-contain ">
            <span class="menu-title">Call Us</span>
            <button class="menu-close-btn button small hollow light" tabindex="0" style="margin:0;">
                Close X
            </button>
        </div>
        <div class="menu-container">
            <% loop $getStoreLocationPage %>
                <div>
                    <a href="tel:$Phone"><p><i class="fa-solid fa-phone"></i>  <strong>$StoreName</strong> - $Phone</p></a>
                </div>
            <% end_loop %>
        </div>
    </div>
</div>

<div id="SlideOut03" class="slide-out-container">
    <div class="menu-panel">
        <div class="btn-contain ">
            <span class="menu-title">Our Locations</span>
            <button class="menu-close-btn button small hollow light" tabindex="0" style="margin:0;">
                Close X
            </button>
        </div>
        <div class="menu-container">
            <% loop $getStoreLocationPage %>
                <div>
                    <a href="$Link">
                        <p><strong>$StoreName</strong></p>
                        <p>$City, $State</p>
                        <p>$Address</p>
                    </a>
                    <a href="tel:$Phone"><p><i class="fa-solid fa-phone"></i> $Phone</p></a>
                </div>
            <% end_loop %>
        </div>
    </div>
</div>

<div class="menu-bg-overlay"></div>