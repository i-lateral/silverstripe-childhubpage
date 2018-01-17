<?php

namespace ilateral\SilverStripe\ChildHubPage\Model;

use SilverStripe\ORM\PaginatedList;
use PageController;

class ChildHubPage_Controller extends PageController
{
    public function PaginatedChildren($limit = 9) {
        $list = $this->AllChildren();

        $pages =  new PaginatedList($list, $this->getRequest());
        $pages->setpageLength($limit);

        return $pages;
    }
}
