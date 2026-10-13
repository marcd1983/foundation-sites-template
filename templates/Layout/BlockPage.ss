<%-- inner --%>
<div class="grid-container $PageWidth " role="main">
		<% include PageHeader %>
       <div class="grid-x grid-margin-x grid-margin-y align-justify mb-20 gap-20">
      
           <main class="main cell large-<% if SidebarPosition == 'none' %>12<% else %>auto<% end_if %> <% if SidebarPosition == 'right' %> large-order-1 small-order-1<% end_if %> <% if SidebarPosition == 'left' %> large-order-0 small-order-1<% end_if %>">
               $ElementalArea
           </main>
            <% if SidebarPosition != 'none' %>
           <aside class="aside cell large-3 <% if SidebarPosition == 'left' %> large-order-1 <% end_if %> <% if SidebarPosition == 'right' %> large-order-0 <% end_if %>">
                
                $SidebarElements
           </aside>
            <% end_if %>
       </div>
        <% include ChildGrid %>
</div>

