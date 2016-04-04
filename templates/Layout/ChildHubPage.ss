<div class="content-container">
	<article>
		<h1>$Title</h1>
		<div class="content">$Content</div>
	</article>
    
    <% if $Children.exists %>
        <div class="child-list">
            <% if $ShowChildrenAs == "Grid" %>
                <div class="line row units-row child-list">
                    <% loop $Children %>
                        <% include ChildHubGridItem %>
                        
                        <% if $MultipleOf(3) %></div><div class="line row units-row child-list"><% end_if %>
                    <% end_loop %>
                </div>
            <% else %>
                <% loop $Children %>
                    <% include ChildHubListItem %>
                <% end_loop %>
            <% end_if %>
        </div>
    <% end_if %>
    
    $Form
    $CommentsForm
</div>
