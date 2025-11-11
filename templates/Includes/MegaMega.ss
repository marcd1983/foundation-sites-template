<style>
  <%-- .MainNav__list { display:flex; gap:1.25rem; align-items:center; }
  .MegaPanel { position:absolute; left:0; right:0; top:100%; padding:1rem 0; display:none; }
  .MainNav__item:hover .MegaPanel { display:block; }
  .MegaPanel__grid {
    list-style:none; margin:0; padding:1rem 2rem;
    display:grid; grid-template-columns: repeat(4, minmax(0,1fr)); gap:.75rem 1.5rem;
  }
  .MegaPanel__cell a { display:block; padding:.25rem 0; text-decoration:none; } --%>
</style>

<nav class="MainNav">
  <% with $MenuType('Main').First %>
    <ul class="MainNav__list menu dropdown" data-dropdown-menu>
      <% loop $MenuItems %>
        <li class="MainNav__item $LinkingMode">
          <a href="$Link" class="MainNav__link" <% if $NewWindow %>target="_blank" rel="noopener"<% end_if %>>$Title.XML</a>

          <% if $Title = 'Products' %>
            <div class="MegaPanel">
              <% with $Top.MenuType('Mega').Filter('Name','Products').First %>
                <ul class="MegaPanel__grid menu dropdown vertical" data-dropdown-menu>
                  <% loop $MenuItems %>
                    <li class="MegaPanel__cell">
                      <a href="$Link" <% if $NewWindow %>target="_blank" rel="noopener"<% end_if %>>$Title.XML</a>
                    </li>
                  <% end_loop %>
                </ul>
              <% end_with %>
            </div>
          <% end_if %>

          <% if $Title = 'Services' %>
            <div class="MegaPanel">
              <% with $Top.MenuType('Mega').Filter('Name','Services').First %>
                <ul class="MegaPanel__grid">
                  <% loop $MenuItems %>
                    <li class="MegaPanel__cell">
                      <a href="$Link" <% if $NewWindow %>target="_blank" rel="noopener"<% end_if %>>$Title.XML</a>
                    </li>
                  <% end_loop %>
                </ul>
              <% end_with %>
            </div>
          <% end_if %>
        </li>
      <% end_loop %>
    </ul>
  <% end_with %>
</nav>
