  <% if $DefaultScheduleID %>
  <% cached $ID, $LastEdited, $Now.Format('y-MM-dd'), $DefaultSchedule.LastEdited, $DefaultSchedule.Hours.Count, $DefaultSchedule.Hours.Max('LastEdited'), $DefaultSchedule.HolidayHours.Count, $DefaultSchedule.HolidayHours.Max('LastEdited') %>
  <div class="grid-x grid-padding-x grid-padding-y">
    <section class="cell store-hours-table">
      <h3 class="section-title">Weekly Hours</h3>
      <% if $DefaultSchedule.Hours.Exists %>
        <table class=" hover unstriped stack">
          <thead>
            <tr>
              <th scope="col">Day</th>
              <th scope="col">Open</th>
              <th scope="col">Close</th>
              <%-- <th scope="col">Closed?</th> --%>
            </tr>
          </thead>
          <tbody>
            <% loop $DefaultSchedule.Hours.Sort('DayOfWeek','ASC') %>
              <tr>
                <td>
                  <%-- Prefer a DayLabel accessor on StoreHour. Fallback if not present. --%>
                  <% if $DayLabel %>
                    $DayLabel.XML
                  <% else %>
                    <% if $DayOfWeek = 1 %>Monday<% end_if %>
                    <% if $DayOfWeek = 2 %>Tuesday<% end_if %>
                    <% if $DayOfWeek = 3 %>Wednesday<% end_if %>
                    <% if $DayOfWeek = 4 %>Thursday<% end_if %>
                    <% if $DayOfWeek = 5 %>Friday<% end_if %>
                    <% if $DayOfWeek = 6 %>Saturday<% end_if %>
                    <% if $DayOfWeek = 7 %>Sunday<% end_if %>
                  <% end_if %>
                </td>
                <td><% if not $IsClosed %>$OpenTimeNice.XML<% else %>—<% end_if %></td>
                <td><% if not $IsClosed %>$CloseTimeNice.XML<% else %>—<% end_if %></td>
                <%-- <td><% if $IsClosed %>Yes<% else %>No<% end_if %></td> --%>
              </tr>
            <% end_loop %>
          </tbody>
        </table>
      <% else %>
        <p class="notice">No weekly hours configured for this location.</p>
      <% end_if %>

      <% if $DefaultSchedule.HolidayHours.Exists %>
        <details class="store-location__holidays">
          <summary>Upcoming holiday hours</summary>
          <ul class="no-bullet">
            <% loop $DefaultSchedule.HolidayHours.Filter('Date:GreaterThanOrEqual', $Now.Format('y-MM-dd')).Sort('Date','ASC') %>
              <li>
                <strong>$Date.Nice</strong>:
                <% if $IsClosed %>
                  Closed
                <% else %>
                  $OpenTime.XML–$CloseTime.XML
                <% end_if %>
                <% if $Note %> — $Note.XML<% end_if %>
                <% if $IsRecurring %> (recurring)<% end_if %>
              </li>
            <% end_loop %>
          </ul>
        </details>
      <% end_if %>
    </section>
  </div>
  <% end_cached %>
  <% end_if %>