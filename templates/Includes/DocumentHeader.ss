<head>
  <% base_tag %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>$EffectiveMetaTitle<% if $SiteConfig.Title %> | $SiteConfig.Title<% end_if %></title>
  <% if $EffectiveMetaDescription %><meta name="description" content="$EffectiveMetaDescription.ATT"><% end_if %>
  <% if $ExtraMeta %>$ExtraMeta.RAW<% end_if %>
  <% if $EffectiveCanonicalURL %><link rel="canonical" href="$EffectiveCanonicalURL.ATT"><% else %><link rel="canonical" href="$AbsoluteLink.ATT"><% end_if %>
  <% if $EffectiveRobotsDirectives %><meta name="robots" content="$EffectiveRobotsDirectives.ATT"><% end_if %>
  <meta property="og:site_name" content="$SiteConfig.Title.ATT">
  <meta property="og:type" content="$EffectiveOGType.ATT">
  <meta property="og:title" content="$EffectiveOGTitle.ATT">
  <% if $EffectiveOGDescription %><meta property="og:description" content="$EffectiveOGDescription.ATT"><% end_if %>
  <meta property="og:url" content="$AbsoluteLink.ATT">
  <% if $EffectiveOGImageURL %><meta property="og:image" content="$EffectiveOGImageURL.ATT"><% end_if %>
  <meta name="twitter:card" content="$EffectiveTwitterCard.ATT">
  <% if $SiteConfig.Twitter %><meta name="twitter:site" content="$SiteConfig.Twitter.ATT"><% end_if %>
  <meta name="twitter:title" content="$EffectiveOGTitle.ATT">
  <% if $EffectiveOGDescription %><meta name="twitter:description" content="$EffectiveOGDescription.ATT"><% end_if %>
  <% if $EffectiveOGImageURL %><meta name="twitter:image" content="$EffectiveOGImageURL.ATT"><% end_if %>
  <% with SiteConfig %><% cached 'org-schema', $LastEdited %><% if $getOrganizationSchemaNode %><script type="application/ld+json">$getOrganizationSchemaNode.JSON</script><% end_if %><% end_cached %><% end_with %>
  <% if $JsonLdScripts %><% loop $JsonLdScripts %><script type="application/ld+json">$JSON.RAW</script><% end_loop %><% end_if %>
  
<link rel="shortcut icon" href="$resourceURL('themes/foundation-theme/images/favicon.ico')" />
</head>
