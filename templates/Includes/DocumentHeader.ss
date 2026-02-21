<head>
  <% base_tag %>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

<%-- <title>$EffectiveMetaTitle<% if $SiteConfig.Title %> | $SiteConfig.Title<% end_if %></title>
  <% if $EffectiveMetaDescription %><meta name="description" content="$EffectiveMetaDescription.ATT"><% end_if %>
  <% if $ExtraMeta %>$ExtraMeta.RAW<% end_if %>
  <% if $EffectiveCanonicalURL %><link rel="canonical" href="$EffectiveCanonicalURL.ATT"><% end_if %>
  <% if $EffectiveRobotsDirectives %><meta name="robots" content="$EffectiveRobotsDirectives.ATT"><% end_if %>
  <meta property="og:site_name" content="$SiteConfig.Title.ATT">
  <meta property="og:type" content="$EffectiveOGType.ATT">
  <meta property="og:title" content="$EffectiveOGTitle.ATT">
  <% if $EffectiveOGDescription %><meta property="og:description" content="$EffectiveOGDescription.ATT"><% end_if %>
  <meta property="og:url" content="$AbsoluteLink.ATT">
  <% if $EffectiveOGImageURL %><meta property="og:image" content="$EffectiveOGImageURL.ATT"><% end_if %>
  <% if $EffectiveTwitterCard %><meta name="twitter:card" content="$EffectiveTwitterCard.ATT"><% end_if %>
  <% if $SiteConfig.Twitter %><meta name="twitter:site" content="$SiteConfig.Twitter.ATT"><% end_if %>
  <meta name="twitter:title" content="$EffectiveOGTitle.ATT">
  <% if $EffectiveOGDescription %><meta name="twitter:description" content="$EffectiveOGDescription.ATT"><% end_if %>
  <% if $EffectiveOGImageURL %><meta name="twitter:image" content="$EffectiveOGImageURL.ATT"><% end_if %> --%>

  <title>$MetaTitle<% if $SiteConfig.Title %> | $SiteConfig.Title<% end_if %></title>
  <% if $MetaDescription %><meta name="description" content="$MetaDescription.ATT"><% end_if %>
  <% if $ExtraMeta %>$ExtraMeta.RAW<% end_if %>
  <% if $CanonicalURL %><link rel="canonical" href="$CanonicalURL.ATT"><% end_if %>
  <% if $RobotsDirectives %><meta name="robots" content="$RobotsDirectives.ATT"><% end_if %>
  <meta property="og:site_name" content="$SiteConfig.Title.ATT">
  <meta property="og:type" content="$OGType.ATT">
  <meta property="og:title" content="$OGTitle.ATT">
  <% if $OGDescription %><meta property="og:description" content="$OGDescription.ATT"><% end_if %>
  <meta property="og:url" content="$AbsoluteLink.ATT">
  <% if $OGImageURL %><meta property="og:image" content="$OGImageURL.ATT"><% end_if %>
  <% if $TwitterCard %><meta name="twitter:card" content="$TwitterCard.ATT"><% end_if %>
  <% if $SiteConfig.Twitter %><meta name="twitter:site" content="$SiteConfig.Twitter.ATT"><% end_if %>
  <meta name="twitter:title" content="$OGTitle.ATT">
  <% if $OGDescription %><meta name="twitter:description" content="$OGDescription.ATT"><% end_if %>
  <% if $OGImageURL %><meta name="twitter:image" content="$OGImageURL.ATT"><% end_if %>
  <% if $PaginationPrevTag %>$PaginationPrevTag.RAW<% end_if %>
  <% if $PaginationNextTag %>$PaginationNextTag.RAW<% end_if %>
  <% with SiteConfig %><% cached 'org-schema', $LastEdited %><% if $getOrganizationSchemaNode %><script type="application/ld+json">$getOrganizationSchemaNode.JSON.RAW</script><% end_if %><% end_cached %><% end_with %>
  
  <% if $JsonLdScripts %><% loop $JsonLdScripts %><script type="application/ld+json">$JSON.RAW</script><% end_loop %><% end_if %>

  <link rel="shortcut icon" href="$resourceURL('themes/foundation-theme/images/favicon.ico')" />

  <% if $SiteConfig.HeadScripts %>
      $SiteConfig.HeadScripts.RAW
  <% end_if %>

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Syne:wght@400..800&display=swap" rel="stylesheet">

</head>
