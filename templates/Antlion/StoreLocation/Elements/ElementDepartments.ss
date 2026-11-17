<div class="element element-dept-staff">
  <% if $Title && $ShowTitle %>
      <% with $HeadingTag %>
          <{$Me} class="element-title">$Up.Title.XML</{$Me}>
      <% end_with %>
  <% end_if %>
  <% if $Sections.Count %>
    <div class="dept-staff-sections">
      <% loop $Sections %>
        <section class="dept-staff-section">
          <div class="section-header flex-container align-middle">
            <% if $Department %>
             <h4 class="section-title">$Title.XML</h4>
              <%-- <% if $Department.Email %>
                <p class="section-meta"><a href="mailto:$Department.Email.XML">$Department.Email.XML</a></p>
              <% end_if %> --%>
            <% end_if %>
          </div>
          <% if $Staff.Count %>
            <div class="grid-x grid-padding-x grid-padding-y large-up-{$Top.Columns}">
              <% loop $Staff %>
              <div class="cell">
                <% include StaffCard %>
              </div>
              <% end_loop %>
            </div>
          <% end_if %>
        </section>
      <% end_loop %>
    </div>
  <% else %>
    <p>No staff to display.</p>
  <% end_if %>
</div>
