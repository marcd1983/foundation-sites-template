<div class="element element-staff">
   <% if $Title && $ShowTitle %><h2 class="element-title">$Title</h2><% end_if %>
  <% if $OrderedStaff.Count %>
    <div class="grid-x grid-padding-x grid-padding-y large-up-{$Top.Columns}">
      <% loop $OrderedStaff %>
      <div class="cell">
        <% include StaffCard %>
      </div>
      <% end_loop %>
    </div>
  <% else %>
    <p>No staff selected.</p>
  <% end_if %>
</div>
