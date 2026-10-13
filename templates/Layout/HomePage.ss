<%-- inner --%>
<div class="grid-container $PageWidth " role="main">
       <div class="grid-x grid-margin-x grid-margin-y align-justify mb-20 gap-20">
           <main class="main cell large-<% if SidebarPosition == 'none' %>12<% else %>auto<% end_if %> <% if SidebarPosition == 'right' %> large-order-1 small-order-1<% end_if %> <% if SidebarPosition == 'left' %> large-order-0 small-order-1<% end_if %>">
               $ElementalArea
           </main>
       </div>
</div>

