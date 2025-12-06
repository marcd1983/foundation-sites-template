<div id="$HolderID" class="<% if extraClass %> $extraClass<% end_if %>">
    <div>
        $Field
        <label for="$ID">$Title<% if $RightTitle %> $RightTitle<% end_if %></label>
        <% if $Content %><div class="content">$Content</div><% end_if %>
    </div>
    <% if $Description %><span class="description">$Description</span><% end_if %>
    <% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
</div>
