<main class="main grid-container $PageWidth" role="main">
    <% include TitleBar %>
    <% if $Content %>
    <div class="grid-x grid-padding-x grid-padding-y content">
        <div class="cell">
            $Content
        </div>
    </div>
    <% else %>
    $ElementalArea
    <% end_if %>
    <% if $OfferingsSorted %>
    <div class="grid-x grid-padding-x grid-padding-y large-up-5">
        <% loop $OfferingsSorted %>
        <div class="cell offering">
            <div class="card">
                <div class="card-section">
                    <h3 class="card-title">$Title</h3>
                    <% if $AgeRange %>
                    <p>$AgeRange</p>
                    <% end_if %>
                    <% if $Summary %>
                    <p>$Summary</p>
                    <% end_if %>
                    <% if $Instructors %>
                    <p>
                        <strong>Instructors:</strong><br>
                        <% loop $Instructors %>
                        <a href="$Link">$DisplayName</a>
                        <% if not $Last %>,
                        <% end_if %>
                        <% end_loop %>
                    </p>
                    <% end_if %>
                    <% if $RegisterLink %>
                    <p><a class="button small hollow" href="$RegisterLink" target="_blank" rel="noopener">Register</a></p>
                    <% else %>
                    <p><a class="button small hollow" href="/classes/registration">Register</a></p>
                    <% end_if %>
                </div>
            </div>
        </div>
        <% end_loop %>
    </div>
    <% end_if %>

    <% if $CategoryInstructors %>
    <h2 class="text-center">Meet the Instructors</h2>
    <div class="grid-x grid-padding-x grid-padding-y large-up-5">
        <% loop $CategoryInstructors %>
        <div class="cell">
            <a class="card" href="$Link">
                <% if $Image %><img src="$Image.Fill(300,300).URL" alt="$Name.ATT" loading="lazy">
                <% end_if %>
                <div class="card-section">
                    <h3 class="card-title">$DisplayName</h3>
                    <p>$InstructorTitle</p>
                    <% if $Specialties %>
                    <%-- <p>$Specialties</p> --%>
                    <% end_if %>
                </div>
            </a>
        </div>
        <% end_loop %>
    </div>
    <% end_if %>
    <% include ChildGrid %>
</main>
$Form
$CommentsForm