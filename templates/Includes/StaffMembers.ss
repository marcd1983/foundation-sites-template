<% if $Staff.Count %>
          <div class="grid-x grid-padding-x grid-padding-y large-up-4">
            <% loop $Staff %>
              <div class="cell">
                <% include StaffCard %>
              </div>
            <% end_loop %>
          </div>
<% end_if %>