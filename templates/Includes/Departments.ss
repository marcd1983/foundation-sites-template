<% if $AllStaffSections.Count %>
  <div class="store-departments grid-x grid-padding-x grid-padding-y">
    <% loop $AllStaffSections %>
      <div class="cell department-section">
        <div class="flex-container align-middle">
          <div>
            <h3 class="section-title">$Title.XML</h3>
          </div>
        </div>
        <% include StaffMembers %>
      </div>
    <% end_loop %>
  </div>
<% end_if %>
