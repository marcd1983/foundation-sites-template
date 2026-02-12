

<main class="main grid-container $PageWidth" role="main">
    <%-- <% include TitleBar %> --%>
    
    <div class="grid-x grid-padding-x grid-padding-y content">
     <% if $Instructor.Image %>
        <div class="cell large-4">
           
               <% loop $Instructor.Image %>
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
        <div class="cell auto">
          <div class="flex-container align-justify align-middle">
            <div>
             <h2 class="instructor-name">$Instructor.FirstName $Instructor.LastName</h2>
              <p class="instructor-title">$Instructor.InstructorTitle</p>
            </div>
            <div>
               <a href="$Link" class="button tiny hollow">&larr; Back to Instructors</a>
            </div>
           
          </div>
          <% if $Instructor.Specialties %>
            <p><strong>Specialties:</strong><br> $Instructor.Specialties</p>
          <% end_if %>
           <%-- <div class="button-group small">
              <a class="button small hollow" href="/classes">View Classes</a>
              <a class="button small" href="/classes/registration">Register</a>
            </div> --%>
        </div>
        <div class="cell">
            <% if $Instructor.Bio %>$Instructor.Bio<% end_if %>
        </div>
    </div>
</main>