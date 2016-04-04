<?php

class ChildHubPage extends Page
{
    
    /**
     * @var string
     */
    private static $icon = "childhubpage/images/grid.png";
    
    /**
     * @var string
     */
    private static $description = 'Display all children of this page as either a list or grid';
        
    private static $db = array(
        "ShowChildrenAs" => "Enum('Grid,List','Grid')"
    );
    
    public function getSettingsFields()
    {
        $fields = parent::getSettingsFields();
        
        $fields->addFieldToTab(
            "Root.Settings",
            DropdownField::create(
                "ShowChildrenAs",
                _t("ChildHubPage.ShowChildrenAs", "Show children of this page as a"),
                $this->dbobject("ShowChildrenAs")->enumValues()
            )
        );
        
        return $fields;
    }
    
}
