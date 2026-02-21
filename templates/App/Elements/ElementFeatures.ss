<div class="feature-section card p-60">
        <div class="grid-x grid-margin-x grid-margin-y">
            <div class="cell">
                <% if $Title && $ShowTitle %>
                    <% with $HeadingTag %>
                        <{$Me} class="element-title">$Up.Title.XML</{$Me}>
                    <% end_with %>
                <% end_if %>
                <% if $Content %><div class="element-content">$Content</div><% end_if %>
                <% if $Features %>
                    <div class="grid-x grid-margin-x grid-margin-y large-up-4">
                        <% loop $Features %>
                            <div class="cell">
                            <div class="flex-container gap-16">
                                <div>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" fill="none">
                                        <path d="M13 21.5L22.5 31L45.5 8" stroke="#44131E" stroke-width="4" stroke-linecap="round"/>
                                        <path d="M46 24C46 28.3512 44.7097 32.6047 42.2923 36.2225C39.8749 39.8404 36.439 42.6602 32.419 44.3254C28.3991 45.9905 23.9756 46.4262 19.708 45.5773C15.4404 44.7284 11.5204 42.6331 8.44365 39.5564C5.3669 36.4796 3.2716 32.5596 2.42272 28.292C1.57385 24.0244 2.00952 19.6009 3.67465 15.581C5.33978 11.561 8.15957 8.12506 11.7775 5.70767C15.3953 3.29028 19.6488 2 24 2" stroke="#44131E" stroke-width="4" stroke-linecap="round"/>
                                    </svg>
                                </div>
                                <div>
                                 <% if $Title %>
                                    <h3 class="card-title" style="color:#fff;">$Title</h3>
                                <% end_if %>
                                <% if $Content %>
                                    <div>$Content</div>
                                <% end_if %> 
                                </div>
                            </div>
                            </div>
                        <% end_loop %>
                    </div>
                <% end_if %>
            </div>
        </div>
</div>