<main class="main grid-container $PageWidth " role="main">
    <% include TitleBar %>
    <% if $Content %>
    <div class="grid-x content">
        <div class="cell">
            $Content
        </div>
    </div>
    <% else %>
    $ElementalArea
    <% end_if %>
    <div class="grid-x grid-margin-x grid-margin-y" style="margin-bottom: 2rem;">

        <div class="cell small-12 medium-4">
            <div class="card shadow location-card">
                <div class="card-section p-40 text-center-small">
                    <h3 class="section-title">Come visit us</h3>
                    <%-- Address block --%>
                    <% if $Address || $City || $State || $Zip %>
                    <address class="store-location-address">
                        <% if $Address %>$Address.XML<br />
                        <% end_if %>
                        <% if $Address2 %>$Address2.XML<br />
                        <% end_if %>
                        <% if $City || $State || $Zip %>
                        $City.XML
                        <% if $City && $State %>,
                        <% end_if %>$State.XML
                        <% if $Zip %>$Zip.XML<br />
                        <% end_if %>
                        <% end_if %>
                    </address>
                    <% if $MapLinkURL %>
                    <a class="button small secondary hollow" href="$MapLinkURL.ATT" target="_blank" rel="noopener">View larger map</a>
                    <% else %>
                    <%-- Google Maps link (basic, no API key required) --%>
                    <a target="_blank" rel="noopener" class="button small secondary hollow store-location-map-link" href="https://www.google.com/maps/search/?api=1&query=$FullAddress.URLEncode">
                        View on Google Maps
                    </a>
                    <% end_if %>
                    <% end_if %>
                    <h3 class="section-title">Contact us</h3>
                    <% if $Phone %>
                    <p class="store-location-phone">
                        <strong>Phone:</strong>
                        <a href="tel:$Phone.Plain">$Phone.XML</a>
                    </p>
                    <% end_if %>
                    <% if $Email %>
                    <p class="store-location-email">
                        <strong>Email:</strong>
                        <a href="mailto:$Email.XML">$Email.XML</a>
                    </p>
                    <% end_if %>
                </div>
            </div>
        </div>
        <div class="cell small-12 medium-4">
            <div class="card location-card shadow">
                   <% include GoogleMap %>
            </div>
        </div>
        <div class="cell small-12 medium-4">
            <div class="card message-form-card shadow">
                <div class="card-section p-40">
                    <h3 class="section-title">Send us a message</h3>
                    <% include FormMessageToast %>
                    $ContactForm
                </div>
            </div>
        </div>

    </div>
    
    <% include StoreSchedule %>
    <% include Departments %>
    <%-- LocalBusiness JSON-LD. Adjust @type to your niche (e.g., "HardwareStore", "AutoPartsStore"). --%>
</main>
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "LocalBusiness",
    "name": "$Title.XML",
    "address": {
        "@type": "PostalAddress",
        "streetAddress": "$Address.XML<% if $Address2 %>, $Address2.XML<% end_if %>",
        "addressLocality": "$City.XML",
        "addressRegion": "$State.XML",
        "postalCode": "$Zip.XML"
    },
    <% if $Phone %>
    "telephone": "$Phone.Plain",
    <% end_if %>
    <% if $Email %>
    "email": "$Email.XML",
    <% end_if %>
    "url": "$AbsoluteLink"
}
</script>