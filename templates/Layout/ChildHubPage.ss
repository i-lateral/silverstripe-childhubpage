<% if $ShowSideBar && $Menu(2) %>
    <% include SideBar %>
<% end_if %>

<div class="content-container<% if $ShowSideBar && $Menu(2) %> unit size3of4 lastUnit col-md-3<% end_if %>">
	<article>
		<h1>$Title</h1>
		<div class="content">$Content</div>
	</article>
    
    <% if $PaginatedChildren.exists %>
        <div class="child-list">
            <% if $ShowChildrenAs == "Grid" %>
                <div class="line row units-row child-list">
                    <% loop $PaginatedChildren %>
                        <% include ChildHubGridItem %>
                        
                        <% if $MultipleOf(3) && not $Last %></div><div class="line row units-row child-list"><% end_if %>
                    <% end_loop %>
                </div>
            <% else %>
                <% loop $PaginatedChildren %>
                    <% include ChildHubListItem %>
                <% end_loop %>
            <% end_if %>
        </div>
        <% with $PaginatedChildren %>
            <% include Pagination %>
        <% end_with %>
    <% end_if %>
    
    $Form
    $CommentsForm
</div>
