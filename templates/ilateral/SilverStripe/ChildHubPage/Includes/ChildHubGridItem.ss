<div class="unit size1of3 unit-33 col-md-4 child $EvenOdd child-{$Pos}">
    <h2>
        <a href="{$Link}">{$Title}</a>
    </h2>
    <% if $FeaturedImage.exists %>
        <p>
            <a href="{$Link}">
                <img src="$FeaturedImage.Fill(330,330).URL" title="$FeaturedImage.Title" alt="$FeaturedImage.Title" class="rounded img-responsive img-fluid">
            </a>
        </p>
    <% end_if %>

	<p>$Content.FirstParagraph</p>
    
    <p>
        <a class="btn btn-primary" href="{$Link}">
            <%t ChildHubPage.More "More" %>
        </a>
    </p>
</div>

<% if $AddLineEnd == 'true' && $MultipleOf(3) && not $Last %>
</div><div class="line row units-row child-list">
<% end_if %>
