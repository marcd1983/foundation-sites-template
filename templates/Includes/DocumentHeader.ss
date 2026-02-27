<head>
<% base_tag %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
$PageMetaTags
<link rel="shortcut icon" href="/favicon.ico" />
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="icon" type="image/svg+xml" href="favicon.svg">
<link rel="apple-touch-icon" sizes="180x180" href="apple-touch-icon.png">
<% if $SiteConfig.HeadScripts %>
$SiteConfig.HeadScripts.RAW
<% end_if %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geist:wght@100..900&family=Syne:wght@400..800&display=swap" rel="stylesheet">
</head>
