<div class="unit size1of3 unit-33 col-md-4 child child-{$Pos}">
    <h2>
        <a href="{$Link}">{$Title}</a>
    </h2>
    <% if $SummaryImage %>
        <p>
            <a href="{$Link}">
                <img src="$SummaryImage.CroppedImage(330,330).URL" class="img-responsive">
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
