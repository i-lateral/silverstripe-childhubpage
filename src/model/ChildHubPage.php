<?php

namespace ilateral\SilverStripe\ChildHubPage\Model;

use SilverStripe\Forms\DropdownField;
use Page;

/**
 * Generate a page
 */
class ChildHubPage extends Page
{
    private static $table_name = 'ChildHubPage';

    /**
     * @var string
     */
    private static $icon = "childhubpage/images/grid.png";
    
    /**
     * @var string
     */
    private static $description = 'Display all children of this page as either a list or grid';
        
    private static $db = [
        "ShowChildrenAs" => "Enum(array('Grid','List'),'Grid')"
    ];
    
    public function getSettingsFields()
    {
        $fields = parent::getSettingsFields();
        
        $fields->addFieldToTab(
            "Root.Settings",
            DropdownField::create(
                "ShowChildrenAs",
                _t("ChildHubPage.ShowChildrenAs", "Show children of this page as a"),
                $this->dbobject("ShowChildrenAs")->enumValues()
            ),
            "CanViewType"
        );
        
        return $fields;
    }
    
}
