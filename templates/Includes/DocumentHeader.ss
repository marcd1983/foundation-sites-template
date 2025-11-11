
<head>
  <% base_tag %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Title -->
  <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
  <!-- Description (leave out if empty to prevent “empty description” warnings) -->
  <% if $MetaDescription %><meta name="description" content="$MetaDescription.ATT"><% end_if %>
  <% if $ExtraMeta %>$ExtraMeta.RAW<% end_if %>
  <!-- Canonical -->
  <% if $CanonicalURL %><link rel="canonical" href="$CanonicalURL.ATT"><% else %><link rel="canonical" href="$AbsoluteLink.ATT"><% end_if %>
  <!-- Robots -->
  <% if $RobotsContent %><meta name="robots" content="$RobotsContent.ATT"><% end_if %>
  <!-- Open Graph -->
  <meta property="og:site_name" content="$SiteConfig.Title.ATT">
  <meta property="og:type" content="website"><!-- change per-template if needed -->
  <meta property="og:title" content="$OGTitleEffective.ATT">
  <% if $OGDescriptionEffective %><meta property="og:description" content="$OGDescriptionEffective.ATT"><% end_if %>
  <meta property="og:url" content="$AbsoluteLink.ATT">
  <% if $OGImage %><meta property="og:image" content="{$OGImage.ScaleMaxWidth(1200).AbsoluteURL.ATT}"><% if $OGImageAlt %><meta property="og:image:alt" content="$OGImageAlt.ATT"><% end_if %><% end_if %>
  <!-- Twitter -->
  <meta name="twitter:card" content="$TwitterCard.ATT">
  <% if $TwitterHandle %><meta name="twitter:site" content="@{$TwitterHandle.ATT}"><% end_if %>
  <meta name="twitter:title" content="$OGTitleEffective.ATT">
  <% if $OGDescriptionEffective %><meta name="twitter:description" content="$OGDescriptionEffective.ATT"><% end_if %>
  <% if $OGImage %><meta name="twitter:image" content="{$OGImage.ScaleMaxWidth(1200).AbsoluteURL.ATT}"><% end_if %>
  <!-- JSON-LD blocks assembled in your controller -->
  <% if $SchemaJSON %>
    <% cached 'schema', $ID, $LastEdited %>
    <script type="application/ld+json">
    $SchemaJSON.RAW
    </script>
    <% end_cached %>
  <% end_if %>


  <% if $JsonLdScripts %>
    <% loop $JsonLdScripts %>
      <script type="application/ld+json">$JSON.RAW</script>
    <% end_loop %>
  <% end_if %>
 
  

  <link rel="shortcut icon" href="$resourceURL('themes/foundation-theme/images/favicon.ico')" />
</head>
