<main class="main grid-container" role="main">
 <% include TitleBar %>
    <div class="grid-x grid-margin-x grid-margin-y">
        <div class="cell">
            $Content
        </div>
        <div class="cell">
            <h2 class="card-title"><%t Innoweb\\CookieConsent\\Pages\\CookiePolicyPage.ManageCookies 'Manage Cookies' %></h2>
            $Form
            <br>
            <% if $SiteConfig.CookieGroups %>
                <h3 class="card-title"><%t Innoweb\\CookieConsent\\Pages\\CookiePolicyPage.CookiesUsed 'Cookies used on this website' %></h3>
                <div class="callout">
                    <% loop $SiteConfig.CookieGroups %>
                        <h4 class="card-title">$Title</h4>
                        $Content
                        <table>
                            <thead>
                            <tr>
                                <th><%t Innoweb\\CookieConsent\\Model\\CookieGroup.Title 'Cookie Name' %></th>
                                <th><%t Innoweb\\CookieConsent\\Model\\CookieGroup.Provider 'Placed by' %></th>
                                <th><%t Innoweb\\CookieConsent\\Model\\CookieGroup.Purpose 'Purpose' %></th>
                                <th><%t Innoweb\\CookieConsent\\Model\\CookieGroup.Expiry 'Expiry' %></th>
                            </tr>
                            </thead>
                            <tbody>
                            <% loop $Cookies %>
                                <tr>
                                    <td>$Title</td>
                                    <td>$ProviderLabel</td>
                                    <td>$Purpose</td>
                                    <td>$Expiry</td>
                                </tr>
                            <% end_loop %>
                            </tbody>
                        </table>
                    <% end_loop %>
                </div>
            <% end_if %>
            $FooterContent
        </div>
    </div>
</main>
