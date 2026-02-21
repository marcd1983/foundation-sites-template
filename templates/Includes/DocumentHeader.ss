<head>
<% base_tag %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
$PageMetaTags
<link rel="shortcut icon" href="$resourceURL('themes/foundation-theme/images/favicon.ico')" />
<% if $SiteConfig.HeadScripts %>
$SiteConfig.HeadScripts.RAW
<% end_if %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Syne:wght@400..800&display=swap" rel="stylesheet">
</head>
