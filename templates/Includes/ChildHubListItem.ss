<div class="line row units-row child child-{$Pos}">
    <% if $SummaryImage %>
        <div class="unit size1of3 unit-33 col-md-4">
            <p>
                <a href="{$Link}">
					<img src="$SummaryImage.CroppedImage(330,330).URL" class="img-responsive">
                </a>
            </p>
        </div>
    <% end_if %>
    
    <div class="unit<% if $SummaryImage %> size2of3 unit-66 col-md-8<% else %> col-md-12<% end_if %>">
        <h2>
            <a href="{$Link}">{$Title}</a>
        </h2>
        <p>$Content.FirstParagraph</p>
        <p>
            <a class="btn btn-primary" href="{$Link}"> 
                <%t ChildHubPage.More "More" %>
            </a>
        </p>
    </div>
</div>
