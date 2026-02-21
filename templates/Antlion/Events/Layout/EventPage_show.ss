
<% if $Event %>
<div class="event-detail">
  <div class="grid-x grid-margin-x grid-margin-y">
    <% if not $Event.HideImage %>
    <% if $Event.Image %>
    <div class="cell large-4">
        <figure class="card Event-detail__figure">
          <img
            src="$Event.Image.FocusFill(800,800).URL"
            alt="$Event.Image.Title.ATT"
            loading="lazy" />
        </figure>
     
    </div>
     <% end_if %>   
    <% end_if %>
    <div class="cell auto">
      <header class="Event-header">
        <div class="flex-container align-justify align-middle">
          <div>
            <h1 class="Event-title">$Event.Title.XML</h1>
          </div>
          <div>
              <a class="button hollow tiny" href="$Top.Link">&larr; Back to $Top.Title.XML</a>
          </div>
        </div>
        <p class="lead">$Event.Summary</p>
        <%-- Optional date window if your Event has StartDate/EndDate --%>
        <% if $Event.StartDate || $Event.EndDate %>
          <p class="Event-dates">
          <strong>Date: </strong>
            <% if $Event.StartDate %>$Event.StartDate.Nice<% end_if %>
            <% if $Event.StartDate && $Event.EndDate %> &ndash; <% end_if %>
            <% if $Event.EndDate %>$Event.EndDate.Nice<% end_if %>
          </p>
        <% end_if %>
		<% if Event.TimeDisplay %>
			<p class="times">
				<strong>Time:</strong>$Event.TimeDisplay 
			</p>
		<% end_if %>
		<% if $Event.Location %><p class="locale"><strong>Location:</strong> $Event.Location</p><% end_if %>   
      </header>

      <%-- Optional CTA buttons (if using LinkField / MultiLinkField as $Event.Links) --%>
     
          <div class="button-group <% if $Align == 'center' %>align-center<% else_if $Align == 'right' %>align-right<% else %>align-left<% end_if %>">
             <% if not $Event.HideForm %>
            <a href="#Form_EventForm" class="button">Contact Us</a>
            <% end_if %>
             <% if $Event.Links.Exists %>
            <% loop $Event.Links %>
             <a class="button $CssClass" href="$URL" <% if $OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>$Title.XML</a>
            <% end_loop %>
            <% end_if %>
          </div>
        
    </div>
  </div>
  <div class="grid-x grid-margin-x grid-margin-y">
    <div class="cell">
      <div class="Event-content">
        $Event.Content
      </div>
    </div>
  </div>

  <div class="grid-x grid-margin-x grid-margin-y">
    <div class="cell">
    <div class="">
      <% if $Event.HasJackrabbitEmbed %>
        <script src="$Event.JackrabbitScriptURL.ATT"></script>
      <% end_if %>
    </div>
    </div>
  </div>

  <% if not $Event.HideForm %>
 <div class="grid-x grid-margin-x grid-margin-y">
    <div class="cell">
    <div class="card p-40">
    
      <div class="Event-enquiry">
        <h3>Ask about this Event</h3>
          <% include FormMessageToast %>
          $EventForm
      </div>
    </div>
  </div>
  </div>
<% end_if %>

</div>
<% else %>
  <%-- Fallback (usually not hit because controller 404s when missing) --%>
  <div class="grid-x grid-margin-x grid-margin-y">
    <div class="cell">

      <div class="callout text-center">

      <div class="toast toast--success toast--auto-hide callout alert p-40 text-center">

         <p>Sorry, we couldn’t find that Eventtion.</p>
        <a class="button hollow" href="$Top.Link">&larr; Back to $Top.Title.XML</a>
      </div>
    </div>
  </div>
<% end_if %>
