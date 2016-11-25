<?php

class ChildHubPage_Controller extends Page_Controller
{
    public function PaginatedChildren($limit = 9) {
        $list = $this->Children();

        $pages =  new PaginatedList($list, $this->getRequest());
        $pages->setpageLength($limit);

        return $pages;
    }
}
